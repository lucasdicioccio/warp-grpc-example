{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DataKinds #-}
module Lib where

import Network.GRPC.Server

import Control.Lens
import Control.Concurrent (threadDelay)
import Control.Monad (void)
import Data.ProtoLens.Message (defMessage)
import Network.Wai.Handler.WarpTLS (defaultTlsSettings)
import Network.Wai.Handler.Warp (defaultSettings)
import Network.GRPC.HTTP2.Types (RPC(..))
import Network.GRPC.HTTP2.Encoding (gzip)
import Proto.Protos.Grpcbin (GRPCBin)
import Proto.Protos.Grpcbin_Fields
import System.Environment (getArgs)

someFunc :: IO ()
someFunc = do
    args <- getArgs
    runGrpc defaultTlsSettings defaultSettings (handlers args) [gzip]

handlers :: [String] -> [ServiceHandler]
handlers args =
  [ unary (RPC :: RPC GRPCBin "empty") handleEmpty
  , unary (RPC :: RPC GRPCBin "index") handleIndex
  , unary (RPC :: RPC GRPCBin "specificError") handleSpecificError
  , unary (RPC :: RPC GRPCBin "randomError") handleRandomError
  , unary (RPC :: RPC GRPCBin "dummyUnary") handleDummyUnary
  , serverStream (RPC :: RPC GRPCBin "dummyServerStream") handleDummyServerStream
  , clientStream (RPC :: RPC GRPCBin "dummyClientStream") handleDummyClientStream
  , if "--bidistep" `elem` args
      then bidiStream (RPC :: RPC GRPCBin "dummyBidirectionalStreamStream") handleDummyBiDiStreamStep
      else generalStream (RPC :: RPC GRPCBin "dummyBidirectionalStreamStream") handleDummyBiDiGeneralStream
  ]

handleIndex :: UnaryHandler GRPCBin "index"
handleIndex _ input = do
    print ("index"::[Char], input)
    return $ defMessage & description .~ "desc"
                        & endpoints   .~ [ defMessage & path .~ "/path1"
                                                      & description .~ "ill-supported"
                                         ]

handleEmpty :: UnaryHandler GRPCBin "empty"
handleEmpty _ input = do
    print ("empty"::[Char], input)
    return $ defMessage

handleSpecificError :: UnaryHandler GRPCBin "specificError"
handleSpecificError _ input = do
    print ("specificError"::[Char], input)
    _ <- throwIO $ GRPCStatus INTERNAL "noo"
    return $ defMessage

handleRandomError :: UnaryHandler GRPCBin "randomError"
handleRandomError _ input = do
    print ("randomError"::[Char], input)
    return $ defMessage

handleDummyUnary :: UnaryHandler GRPCBin "dummyUnary"
handleDummyUnary _ input = pure input

handleDummyServerStream :: ServerStreamHandler GRPCBin "dummyServerStream" Int
handleDummyServerStream _ input = do
    print ("sstream-start"::[Char], input)
    return $ (10, ServerStream $ \n -> do
        threadDelay 1000000
        if n == 0
        then print ("sstream-end"::[Char]) >> return Nothing
        else do
            print ("sstream-msg"::[Char], n)
            return $ Just (n-1, defMessage))

handleDummyClientStream :: ClientStreamHandler GRPCBin "dummyClientStream" Int
handleDummyClientStream _ = do
    print ("cstream-start"::[Char])
    return $ (0, ClientStream
                     (\n input -> print ("cstream-msg"::[Char], n, input) >> return (n+1))
                     (\n -> print ("cstream-end"::[Char], n) >> return defMessage))

handleDummyBiDiStreamStep :: BiDiStreamHandler GRPCBin "dummyBidirectionalStreamStream" Int
handleDummyBiDiStreamStep _ = do
    print ("bidistream-start"::[Char])
    return $ (10, BiDiStream go)
  where
    go 0                  = putStrLn "bidistream-abort" >> pure Abort
    go n | n `mod` 2 == 0 = pure $ WaitInput
                (\m msg -> print ("bidistream-msg" :: [Char], m, msg) >> pure (m - 1))
                (\m -> print ("bidistream-closed" :: [Char], m) >> pure 0)
         | otherwise      = do
                print ("bidistream-out"::[Char], n)
                pure $ WriteOutput (n -1) defMessage

handleDummyBiDiGeneralStream :: GeneralStreamHandler GRPCBin "dummyBidirectionalStreamStream" Int Int
handleDummyBiDiGeneralStream _ = do
    print ("general-bidistream-start"::[Char])
    return (0, incoming, 10, outgoing)
  where
    incoming = IncomingStream handleMsg handleEof
    handleMsg n msg = print ("general-msg" :: [Char], n, msg) >> pure (n+1)
    handleEof n     = print ("general-eof" :: [Char], n)
    outgoing = OutgoingStream (\n -> print ("general-out"::[Char], n) >> getNext n)
    getNext 0 = pure Nothing
    getNext n = pure (Just (n-1, defMessage))

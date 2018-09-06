{- This file was auto-generated from protos/grpcbin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Protos.Grpcbin_Fields where
import qualified Data.ProtoLens.Reexport.Prelude as Prelude
import qualified Data.ProtoLens.Reexport.Data.Int as Data.Int
import qualified Data.ProtoLens.Reexport.Data.Word as Data.Word
import qualified Data.ProtoLens.Reexport.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Reexport.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Reexport.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Reexport.Data.Default.Class
       as Data.Default.Class
import qualified Data.ProtoLens.Reexport.Data.Text as Data.Text
import qualified Data.ProtoLens.Reexport.Data.Map as Data.Map
import qualified Data.ProtoLens.Reexport.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Reexport.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Reexport.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Reexport.Text.Read as Text.Read

code ::
     forall f s t a b . (Lens.Labels.HasLens f s t "code" a b) =>
       Lens.Family2.LensLike f s t a b
code
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "code")
description ::
            forall f s t a b . (Lens.Labels.HasLens f s t "description" a b) =>
              Lens.Family2.LensLike f s t a b
description
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "description")
endpoints ::
          forall f s t a b . (Lens.Labels.HasLens f s t "endpoints" a b) =>
            Lens.Family2.LensLike f s t a b
endpoints
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "endpoints")
fBool ::
      forall f s t a b . (Lens.Labels.HasLens f s t "fBool" a b) =>
        Lens.Family2.LensLike f s t a b
fBool
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBool")
fBools ::
       forall f s t a b . (Lens.Labels.HasLens f s t "fBools" a b) =>
         Lens.Family2.LensLike f s t a b
fBools
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBools")
fBytes ::
       forall f s t a b . (Lens.Labels.HasLens f s t "fBytes" a b) =>
         Lens.Family2.LensLike f s t a b
fBytes
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBytes")
fBytess ::
        forall f s t a b . (Lens.Labels.HasLens f s t "fBytess" a b) =>
          Lens.Family2.LensLike f s t a b
fBytess
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBytess")
fEnum ::
      forall f s t a b . (Lens.Labels.HasLens f s t "fEnum" a b) =>
        Lens.Family2.LensLike f s t a b
fEnum
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fEnum")
fEnums ::
       forall f s t a b . (Lens.Labels.HasLens f s t "fEnums" a b) =>
         Lens.Family2.LensLike f s t a b
fEnums
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fEnums")
fFloat ::
       forall f s t a b . (Lens.Labels.HasLens f s t "fFloat" a b) =>
         Lens.Family2.LensLike f s t a b
fFloat
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fFloat")
fFloats ::
        forall f s t a b . (Lens.Labels.HasLens f s t "fFloats" a b) =>
          Lens.Family2.LensLike f s t a b
fFloats
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fFloats")
fInt32 ::
       forall f s t a b . (Lens.Labels.HasLens f s t "fInt32" a b) =>
         Lens.Family2.LensLike f s t a b
fInt32
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt32")
fInt32s ::
        forall f s t a b . (Lens.Labels.HasLens f s t "fInt32s" a b) =>
          Lens.Family2.LensLike f s t a b
fInt32s
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt32s")
fInt64 ::
       forall f s t a b . (Lens.Labels.HasLens f s t "fInt64" a b) =>
         Lens.Family2.LensLike f s t a b
fInt64
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt64")
fInt64s ::
        forall f s t a b . (Lens.Labels.HasLens f s t "fInt64s" a b) =>
          Lens.Family2.LensLike f s t a b
fInt64s
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt64s")
fString ::
        forall f s t a b . (Lens.Labels.HasLens f s t "fString" a b) =>
          Lens.Family2.LensLike f s t a b
fString
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fString")
fStrings ::
         forall f s t a b . (Lens.Labels.HasLens f s t "fStrings" a b) =>
           Lens.Family2.LensLike f s t a b
fStrings
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fStrings")
fSub ::
     forall f s t a b . (Lens.Labels.HasLens f s t "fSub" a b) =>
       Lens.Family2.LensLike f s t a b
fSub
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fSub")
fSubs ::
      forall f s t a b . (Lens.Labels.HasLens f s t "fSubs" a b) =>
        Lens.Family2.LensLike f s t a b
fSubs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fSubs")
key ::
    forall f s t a b . (Lens.Labels.HasLens f s t "key" a b) =>
      Lens.Family2.LensLike f s t a b
key
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
maybe'fSub ::
           forall f s t a b . (Lens.Labels.HasLens f s t "maybe'fSub" a b) =>
             Lens.Family2.LensLike f s t a b
maybe'fSub
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fSub")
maybe'value ::
            forall f s t a b . (Lens.Labels.HasLens f s t "maybe'value" a b) =>
              Lens.Family2.LensLike f s t a b
maybe'value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")
metadata ::
         forall f s t a b . (Lens.Labels.HasLens f s t "metadata" a b) =>
           Lens.Family2.LensLike f s t a b
metadata
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "metadata")
path ::
     forall f s t a b . (Lens.Labels.HasLens f s t "path" a b) =>
       Lens.Family2.LensLike f s t a b
path
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")
reason ::
       forall f s t a b . (Lens.Labels.HasLens f s t "reason" a b) =>
         Lens.Family2.LensLike f s t a b
reason
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "reason")
value ::
      forall f s t a b . (Lens.Labels.HasLens f s t "value" a b) =>
        Lens.Family2.LensLike f s t a b
value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")
values ::
       forall f s t a b . (Lens.Labels.HasLens f s t "values" a b) =>
         Lens.Family2.LensLike f s t a b
values
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "values")
{- This file was auto-generated from protos/grpcbin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Protos.Grpcbin_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read

code ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "code" a) =>
       Lens.Family2.LensLike' f s a
code
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "code")
description ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "description" a) =>
              Lens.Family2.LensLike' f s a
description
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "description")
endpoints ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "endpoints" a) =>
            Lens.Family2.LensLike' f s a
endpoints
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "endpoints")
fBool ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "fBool" a) =>
        Lens.Family2.LensLike' f s a
fBool
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBool")
fBools ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fBools" a) =>
         Lens.Family2.LensLike' f s a
fBools
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBools")
fBytes ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fBytes" a) =>
         Lens.Family2.LensLike' f s a
fBytes
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBytes")
fBytess ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "fBytess" a) =>
          Lens.Family2.LensLike' f s a
fBytess
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBytess")
fEnum ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "fEnum" a) =>
        Lens.Family2.LensLike' f s a
fEnum
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fEnum")
fEnums ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fEnums" a) =>
         Lens.Family2.LensLike' f s a
fEnums
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fEnums")
fFloat ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fFloat" a) =>
         Lens.Family2.LensLike' f s a
fFloat
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fFloat")
fFloats ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "fFloats" a) =>
          Lens.Family2.LensLike' f s a
fFloats
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fFloats")
fInt32 ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fInt32" a) =>
         Lens.Family2.LensLike' f s a
fInt32
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt32")
fInt32s ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "fInt32s" a) =>
          Lens.Family2.LensLike' f s a
fInt32s
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt32s")
fInt64 ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fInt64" a) =>
         Lens.Family2.LensLike' f s a
fInt64
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt64")
fInt64s ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "fInt64s" a) =>
          Lens.Family2.LensLike' f s a
fInt64s
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt64s")
fString ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "fString" a) =>
          Lens.Family2.LensLike' f s a
fString
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fString")
fStrings ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "fStrings" a) =>
           Lens.Family2.LensLike' f s a
fStrings
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fStrings")
fSub ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "fSub" a) =>
       Lens.Family2.LensLike' f s a
fSub
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fSub")
fSubs ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "fSubs" a) =>
        Lens.Family2.LensLike' f s a
fSubs
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fSubs")
key ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "key" a) =>
      Lens.Family2.LensLike' f s a
key
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
maybe'fSub ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'fSub" a) =>
             Lens.Family2.LensLike' f s a
maybe'fSub
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fSub")
maybe'value ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'value" a) =>
              Lens.Family2.LensLike' f s a
maybe'value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")
metadata ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "metadata" a) =>
           Lens.Family2.LensLike' f s a
metadata
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "metadata")
path ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "path" a) =>
       Lens.Family2.LensLike' f s a
path
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")
reason ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "reason" a) =>
         Lens.Family2.LensLike' f s a
reason
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "reason")
value ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "value" a) =>
        Lens.Family2.LensLike' f s a
value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")
values ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "values" a) =>
         Lens.Family2.LensLike' f s a
values
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "values")
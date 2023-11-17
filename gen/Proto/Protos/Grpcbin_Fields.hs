{- This file was auto-generated from protos/grpcbin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Grpcbin_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
code ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
  Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
description ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "description" a) =>
  Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoints" a) =>
  Lens.Family2.LensLike' f s a
endpoints = Data.ProtoLens.Field.field @"endpoints"
fBool ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fBool" a) =>
  Lens.Family2.LensLike' f s a
fBool = Data.ProtoLens.Field.field @"fBool"
fBools ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fBools" a) =>
  Lens.Family2.LensLike' f s a
fBools = Data.ProtoLens.Field.field @"fBools"
fBytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fBytes" a) =>
  Lens.Family2.LensLike' f s a
fBytes = Data.ProtoLens.Field.field @"fBytes"
fBytess ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fBytess" a) =>
  Lens.Family2.LensLike' f s a
fBytess = Data.ProtoLens.Field.field @"fBytess"
fEnum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fEnum" a) =>
  Lens.Family2.LensLike' f s a
fEnum = Data.ProtoLens.Field.field @"fEnum"
fEnums ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fEnums" a) =>
  Lens.Family2.LensLike' f s a
fEnums = Data.ProtoLens.Field.field @"fEnums"
fFloat ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fFloat" a) =>
  Lens.Family2.LensLike' f s a
fFloat = Data.ProtoLens.Field.field @"fFloat"
fFloats ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fFloats" a) =>
  Lens.Family2.LensLike' f s a
fFloats = Data.ProtoLens.Field.field @"fFloats"
fInt32 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fInt32" a) =>
  Lens.Family2.LensLike' f s a
fInt32 = Data.ProtoLens.Field.field @"fInt32"
fInt32s ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fInt32s" a) =>
  Lens.Family2.LensLike' f s a
fInt32s = Data.ProtoLens.Field.field @"fInt32s"
fInt64 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fInt64" a) =>
  Lens.Family2.LensLike' f s a
fInt64 = Data.ProtoLens.Field.field @"fInt64"
fInt64s ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fInt64s" a) =>
  Lens.Family2.LensLike' f s a
fInt64s = Data.ProtoLens.Field.field @"fInt64s"
fString ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fString" a) =>
  Lens.Family2.LensLike' f s a
fString = Data.ProtoLens.Field.field @"fString"
fStrings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fStrings" a) =>
  Lens.Family2.LensLike' f s a
fStrings = Data.ProtoLens.Field.field @"fStrings"
fSub ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fSub" a) =>
  Lens.Family2.LensLike' f s a
fSub = Data.ProtoLens.Field.field @"fSub"
fSubs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fSubs" a) =>
  Lens.Family2.LensLike' f s a
fSubs = Data.ProtoLens.Field.field @"fSubs"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'fSub ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fSub" a) =>
  Lens.Family2.LensLike' f s a
maybe'fSub = Data.ProtoLens.Field.field @"maybe'fSub"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
values ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "values" a) =>
  Lens.Family2.LensLike' f s a
values = Data.ProtoLens.Field.field @"values"
vec'endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'endpoints" a) =>
  Lens.Family2.LensLike' f s a
vec'endpoints = Data.ProtoLens.Field.field @"vec'endpoints"
vec'fBools ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fBools" a) =>
  Lens.Family2.LensLike' f s a
vec'fBools = Data.ProtoLens.Field.field @"vec'fBools"
vec'fBytess ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fBytess" a) =>
  Lens.Family2.LensLike' f s a
vec'fBytess = Data.ProtoLens.Field.field @"vec'fBytess"
vec'fEnums ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fEnums" a) =>
  Lens.Family2.LensLike' f s a
vec'fEnums = Data.ProtoLens.Field.field @"vec'fEnums"
vec'fFloats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fFloats" a) =>
  Lens.Family2.LensLike' f s a
vec'fFloats = Data.ProtoLens.Field.field @"vec'fFloats"
vec'fInt32s ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fInt32s" a) =>
  Lens.Family2.LensLike' f s a
vec'fInt32s = Data.ProtoLens.Field.field @"vec'fInt32s"
vec'fInt64s ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fInt64s" a) =>
  Lens.Family2.LensLike' f s a
vec'fInt64s = Data.ProtoLens.Field.field @"vec'fInt64s"
vec'fStrings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fStrings" a) =>
  Lens.Family2.LensLike' f s a
vec'fStrings = Data.ProtoLens.Field.field @"vec'fStrings"
vec'fSubs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fSubs" a) =>
  Lens.Family2.LensLike' f s a
vec'fSubs = Data.ProtoLens.Field.field @"vec'fSubs"
vec'values ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'values" a) =>
  Lens.Family2.LensLike' f s a
vec'values = Data.ProtoLens.Field.field @"vec'values"
{- This file was auto-generated from protos/grpcbin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Grpcbin (
        GRPCBin(..), DummyMessage(), DummyMessage'Enum(..),
        DummyMessage'Enum(), DummyMessage'Enum'UnrecognizedValue,
        DummyMessage'Sub(), EmptyMessage(), HeadersMessage(),
        HeadersMessage'MetadataEntry(), HeadersMessage'Values(),
        IndexReply(), IndexReply'Endpoint(), SpecificErrorRequest()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.fString' @:: Lens' DummyMessage Data.Text.Text@
         * 'Proto.Protos.Grpcbin_Fields.fStrings' @:: Lens' DummyMessage [Data.Text.Text]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fStrings' @:: Lens' DummyMessage (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Grpcbin_Fields.fInt32' @:: Lens' DummyMessage Data.Int.Int32@
         * 'Proto.Protos.Grpcbin_Fields.fInt32s' @:: Lens' DummyMessage [Data.Int.Int32]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fInt32s' @:: Lens' DummyMessage (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Grpcbin_Fields.fEnum' @:: Lens' DummyMessage DummyMessage'Enum@
         * 'Proto.Protos.Grpcbin_Fields.fEnums' @:: Lens' DummyMessage [DummyMessage'Enum]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fEnums' @:: Lens' DummyMessage (Data.Vector.Vector DummyMessage'Enum)@
         * 'Proto.Protos.Grpcbin_Fields.fSub' @:: Lens' DummyMessage DummyMessage'Sub@
         * 'Proto.Protos.Grpcbin_Fields.maybe'fSub' @:: Lens' DummyMessage (Prelude.Maybe DummyMessage'Sub)@
         * 'Proto.Protos.Grpcbin_Fields.fSubs' @:: Lens' DummyMessage [DummyMessage'Sub]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fSubs' @:: Lens' DummyMessage (Data.Vector.Vector DummyMessage'Sub)@
         * 'Proto.Protos.Grpcbin_Fields.fBool' @:: Lens' DummyMessage Prelude.Bool@
         * 'Proto.Protos.Grpcbin_Fields.fBools' @:: Lens' DummyMessage [Prelude.Bool]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fBools' @:: Lens' DummyMessage (Data.Vector.Unboxed.Vector Prelude.Bool)@
         * 'Proto.Protos.Grpcbin_Fields.fInt64' @:: Lens' DummyMessage Data.Int.Int64@
         * 'Proto.Protos.Grpcbin_Fields.fInt64s' @:: Lens' DummyMessage [Data.Int.Int64]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fInt64s' @:: Lens' DummyMessage (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Protos.Grpcbin_Fields.fBytes' @:: Lens' DummyMessage Data.ByteString.ByteString@
         * 'Proto.Protos.Grpcbin_Fields.fBytess' @:: Lens' DummyMessage [Data.ByteString.ByteString]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fBytess' @:: Lens' DummyMessage (Data.Vector.Vector Data.ByteString.ByteString)@
         * 'Proto.Protos.Grpcbin_Fields.fFloat' @:: Lens' DummyMessage Prelude.Float@
         * 'Proto.Protos.Grpcbin_Fields.fFloats' @:: Lens' DummyMessage [Prelude.Float]@
         * 'Proto.Protos.Grpcbin_Fields.vec'fFloats' @:: Lens' DummyMessage (Data.Vector.Unboxed.Vector Prelude.Float)@ -}
data DummyMessage
  = DummyMessage'_constructor {_DummyMessage'fString :: !Data.Text.Text,
                               _DummyMessage'fStrings :: !(Data.Vector.Vector Data.Text.Text),
                               _DummyMessage'fInt32 :: !Data.Int.Int32,
                               _DummyMessage'fInt32s :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                               _DummyMessage'fEnum :: !DummyMessage'Enum,
                               _DummyMessage'fEnums :: !(Data.Vector.Vector DummyMessage'Enum),
                               _DummyMessage'fSub :: !(Prelude.Maybe DummyMessage'Sub),
                               _DummyMessage'fSubs :: !(Data.Vector.Vector DummyMessage'Sub),
                               _DummyMessage'fBool :: !Prelude.Bool,
                               _DummyMessage'fBools :: !(Data.Vector.Unboxed.Vector Prelude.Bool),
                               _DummyMessage'fInt64 :: !Data.Int.Int64,
                               _DummyMessage'fInt64s :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                               _DummyMessage'fBytes :: !Data.ByteString.ByteString,
                               _DummyMessage'fBytess :: !(Data.Vector.Vector Data.ByteString.ByteString),
                               _DummyMessage'fFloat :: !Prelude.Float,
                               _DummyMessage'fFloats :: !(Data.Vector.Unboxed.Vector Prelude.Float),
                               _DummyMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DummyMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DummyMessage "fString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fString
           (\ x__ y__ -> x__ {_DummyMessage'fString = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fStrings" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fStrings
           (\ x__ y__ -> x__ {_DummyMessage'fStrings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fStrings" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fStrings
           (\ x__ y__ -> x__ {_DummyMessage'fStrings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fInt32" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fInt32
           (\ x__ y__ -> x__ {_DummyMessage'fInt32 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fInt32s" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fInt32s
           (\ x__ y__ -> x__ {_DummyMessage'fInt32s = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fInt32s" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fInt32s
           (\ x__ y__ -> x__ {_DummyMessage'fInt32s = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fEnum" DummyMessage'Enum where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fEnum (\ x__ y__ -> x__ {_DummyMessage'fEnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fEnums" [DummyMessage'Enum] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fEnums
           (\ x__ y__ -> x__ {_DummyMessage'fEnums = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fEnums" (Data.Vector.Vector DummyMessage'Enum) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fEnums
           (\ x__ y__ -> x__ {_DummyMessage'fEnums = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fSub" DummyMessage'Sub where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fSub (\ x__ y__ -> x__ {_DummyMessage'fSub = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DummyMessage "maybe'fSub" (Prelude.Maybe DummyMessage'Sub) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fSub (\ x__ y__ -> x__ {_DummyMessage'fSub = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fSubs" [DummyMessage'Sub] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fSubs (\ x__ y__ -> x__ {_DummyMessage'fSubs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fSubs" (Data.Vector.Vector DummyMessage'Sub) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fSubs (\ x__ y__ -> x__ {_DummyMessage'fSubs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fBool" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fBool (\ x__ y__ -> x__ {_DummyMessage'fBool = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fBools" [Prelude.Bool] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fBools
           (\ x__ y__ -> x__ {_DummyMessage'fBools = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fBools" (Data.Vector.Unboxed.Vector Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fBools
           (\ x__ y__ -> x__ {_DummyMessage'fBools = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fInt64" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fInt64
           (\ x__ y__ -> x__ {_DummyMessage'fInt64 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fInt64s" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fInt64s
           (\ x__ y__ -> x__ {_DummyMessage'fInt64s = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fInt64s" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fInt64s
           (\ x__ y__ -> x__ {_DummyMessage'fInt64s = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fBytes
           (\ x__ y__ -> x__ {_DummyMessage'fBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fBytess" [Data.ByteString.ByteString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fBytess
           (\ x__ y__ -> x__ {_DummyMessage'fBytess = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fBytess" (Data.Vector.Vector Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fBytess
           (\ x__ y__ -> x__ {_DummyMessage'fBytess = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fFloat" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fFloat
           (\ x__ y__ -> x__ {_DummyMessage'fFloat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DummyMessage "fFloats" [Prelude.Float] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fFloats
           (\ x__ y__ -> x__ {_DummyMessage'fFloats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DummyMessage "vec'fFloats" (Data.Vector.Unboxed.Vector Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'fFloats
           (\ x__ y__ -> x__ {_DummyMessage'fFloats = y__}))
        Prelude.id
instance Data.ProtoLens.Message DummyMessage where
  messageName _ = Data.Text.pack "grpcbin.DummyMessage"
  packedMessageDescriptor _
    = "\n\
      \\fDummyMessage\DC2\EM\n\
      \\bf_string\CAN\SOH \SOH(\tR\afString\DC2\ESC\n\
      \\tf_strings\CAN\STX \ETX(\tR\bfStrings\DC2\ETB\n\
      \\af_int32\CAN\ETX \SOH(\ENQR\ACKfInt32\DC2\EM\n\
      \\bf_int32s\CAN\EOT \ETX(\ENQR\afInt32s\DC21\n\
      \\ACKf_enum\CAN\ENQ \SOH(\SO2\SUB.grpcbin.DummyMessage.EnumR\ENQfEnum\DC23\n\
      \\af_enums\CAN\ACK \ETX(\SO2\SUB.grpcbin.DummyMessage.EnumR\ACKfEnums\DC2.\n\
      \\ENQf_sub\CAN\a \SOH(\v2\EM.grpcbin.DummyMessage.SubR\EOTfSub\DC20\n\
      \\ACKf_subs\CAN\b \ETX(\v2\EM.grpcbin.DummyMessage.SubR\ENQfSubs\DC2\NAK\n\
      \\ACKf_bool\CAN\t \SOH(\bR\ENQfBool\DC2\ETB\n\
      \\af_bools\CAN\n\
      \ \ETX(\bR\ACKfBools\DC2\ETB\n\
      \\af_int64\CAN\v \SOH(\ETXR\ACKfInt64\DC2\EM\n\
      \\bf_int64s\CAN\f \ETX(\ETXR\afInt64s\DC2\ETB\n\
      \\af_bytes\CAN\r \SOH(\fR\ACKfBytes\DC2\EM\n\
      \\bf_bytess\CAN\SO \ETX(\fR\afBytess\DC2\ETB\n\
      \\af_float\CAN\SI \SOH(\STXR\ACKfFloat\DC2\EM\n\
      \\bf_floats\CAN\DLE \ETX(\STXR\afFloats\SUB \n\
      \\ETXSub\DC2\EM\n\
      \\bf_string\CAN\SOH \SOH(\tR\afString\"*\n\
      \\EOTEnum\DC2\n\
      \\n\
      \\ACKENUM_0\DLE\NUL\DC2\n\
      \\n\
      \\ACKENUM_1\DLE\SOH\DC2\n\
      \\n\
      \\ACKENUM_2\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fString")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fStrings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_strings"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fStrings")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fInt32__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_int32"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fInt32")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fInt32s__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_int32s"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"fInt32s")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fEnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_enum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor DummyMessage'Enum)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fEnum")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fEnums__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_enums"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor DummyMessage'Enum)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"fEnums")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fSub__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_sub"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DummyMessage'Sub)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fSub")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fSubs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_subs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DummyMessage'Sub)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"fSubs")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fBool__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_bool"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fBool")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fBools__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_bools"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"fBools")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fInt64__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_int64"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fInt64")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fInt64s__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_int64s"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"fInt64s")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fBytes")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fBytess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_bytess"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"fBytess")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fFloat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_float"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fFloat")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
        fFloats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_floats"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"fFloats")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fString__field_descriptor),
           (Data.ProtoLens.Tag 2, fStrings__field_descriptor),
           (Data.ProtoLens.Tag 3, fInt32__field_descriptor),
           (Data.ProtoLens.Tag 4, fInt32s__field_descriptor),
           (Data.ProtoLens.Tag 5, fEnum__field_descriptor),
           (Data.ProtoLens.Tag 6, fEnums__field_descriptor),
           (Data.ProtoLens.Tag 7, fSub__field_descriptor),
           (Data.ProtoLens.Tag 8, fSubs__field_descriptor),
           (Data.ProtoLens.Tag 9, fBool__field_descriptor),
           (Data.ProtoLens.Tag 10, fBools__field_descriptor),
           (Data.ProtoLens.Tag 11, fInt64__field_descriptor),
           (Data.ProtoLens.Tag 12, fInt64s__field_descriptor),
           (Data.ProtoLens.Tag 13, fBytes__field_descriptor),
           (Data.ProtoLens.Tag 14, fBytess__field_descriptor),
           (Data.ProtoLens.Tag 15, fFloat__field_descriptor),
           (Data.ProtoLens.Tag 16, fFloats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DummyMessage'_unknownFields
        (\ x__ y__ -> x__ {_DummyMessage'_unknownFields = y__})
  defMessage
    = DummyMessage'_constructor
        {_DummyMessage'fString = Data.ProtoLens.fieldDefault,
         _DummyMessage'fStrings = Data.Vector.Generic.empty,
         _DummyMessage'fInt32 = Data.ProtoLens.fieldDefault,
         _DummyMessage'fInt32s = Data.Vector.Generic.empty,
         _DummyMessage'fEnum = Data.ProtoLens.fieldDefault,
         _DummyMessage'fEnums = Data.Vector.Generic.empty,
         _DummyMessage'fSub = Prelude.Nothing,
         _DummyMessage'fSubs = Data.Vector.Generic.empty,
         _DummyMessage'fBool = Data.ProtoLens.fieldDefault,
         _DummyMessage'fBools = Data.Vector.Generic.empty,
         _DummyMessage'fInt64 = Data.ProtoLens.fieldDefault,
         _DummyMessage'fInt64s = Data.Vector.Generic.empty,
         _DummyMessage'fBytes = Data.ProtoLens.fieldDefault,
         _DummyMessage'fBytess = Data.Vector.Generic.empty,
         _DummyMessage'fFloat = Data.ProtoLens.fieldDefault,
         _DummyMessage'fFloats = Data.Vector.Generic.empty,
         _DummyMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DummyMessage
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Bool
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.ByteString.ByteString
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DummyMessage'Enum
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Prelude.Float
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld DummyMessage'Sub
                                  -> Data.ProtoLens.Encoding.Bytes.Parser DummyMessage
        loop
          x
          mutable'fBools
          mutable'fBytess
          mutable'fEnums
          mutable'fFloats
          mutable'fInt32s
          mutable'fInt64s
          mutable'fStrings
          mutable'fSubs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fBools <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'fBools)
                      frozen'fBytess <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'fBytess)
                      frozen'fEnums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'fEnums)
                      frozen'fFloats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'fFloats)
                      frozen'fInt32s <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'fInt32s)
                      frozen'fInt64s <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'fInt64s)
                      frozen'fStrings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'fStrings)
                      frozen'fSubs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'fSubs)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'fBools") frozen'fBools
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'fBytess") frozen'fBytess
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'fEnums") frozen'fEnums
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'fFloats") frozen'fFloats
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'fInt32s") frozen'fInt32s
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'fInt64s")
                                             frozen'fInt64s
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'fStrings")
                                                frozen'fStrings
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"vec'fSubs")
                                                   frozen'fSubs x)))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "f_string"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fString") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "f_strings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fStrings y)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s v mutable'fSubs
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "f_int32"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fInt32") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        32
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "f_int32s"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fInt32s y)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats v
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        34
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "f_int32s"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fInt32s)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats y
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "f_enum"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fEnum") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "f_enums"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fEnums y)
                                loop
                                  x mutable'fBools mutable'fBytess v mutable'fFloats mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "f_enums"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fEnums)
                                loop
                                  x mutable'fBools mutable'fBytess y mutable'fFloats mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "f_sub"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fSub") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "f_subs"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fSubs y)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings v
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "f_bool"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fBool") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        80
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "f_bools"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fBools y)
                                loop
                                  x v mutable'fBytess mutable'fEnums mutable'fFloats mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        82
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       ((Prelude./=) 0)
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "f_bools"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fBools)
                                loop
                                  x y mutable'fBytess mutable'fEnums mutable'fFloats mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "f_int64"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fInt64") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        96
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "f_int64s"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fInt64s y)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s v mutable'fStrings mutable'fSubs
                        98
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "f_int64s"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fInt64s)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s y mutable'fStrings mutable'fSubs
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "f_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fBytes") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        114
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.getBytes
                                              (Prelude.fromIntegral len))
                                        "f_bytess"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fBytess y)
                                loop
                                  x mutable'fBools v mutable'fEnums mutable'fFloats mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        125
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "f_float"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fFloat") y x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
                        133
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Data.ProtoLens.Encoding.Bytes.wordToFloat
                                           Data.ProtoLens.Encoding.Bytes.getFixed32)
                                        "f_floats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'fFloats y)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums v mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        130
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Data.ProtoLens.Encoding.Bytes.wordToFloat
                                                                       Data.ProtoLens.Encoding.Bytes.getFixed32)
                                                                    "f_floats"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'fFloats)
                                loop
                                  x mutable'fBools mutable'fBytess mutable'fEnums y mutable'fInt32s
                                  mutable'fInt64s mutable'fStrings mutable'fSubs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fBools mutable'fBytess mutable'fEnums mutable'fFloats
                                  mutable'fInt32s mutable'fInt64s mutable'fStrings mutable'fSubs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fBools <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'fBytess <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'fEnums <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'fFloats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'fInt32s <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'fInt64s <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'fStrings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'fSubs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'fBools mutable'fBytess
                mutable'fEnums mutable'fFloats mutable'fInt32s mutable'fInt64s
                mutable'fStrings mutable'fSubs)
          "DummyMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fString") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'fStrings") _x))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fInt32") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         p = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'fInt32s") _x
                       in
                         if Data.Vector.Generic.null p then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  (Data.ProtoLens.Encoding.Bytes.runBuilder
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        p))))
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fEnum") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (let
                               p = Lens.Family2.view (Data.ProtoLens.Field.field @"vec'fEnums") _x
                             in
                               if Data.Vector.Generic.null p then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        (Data.ProtoLens.Encoding.Bytes.runBuilder
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              ((Prelude..)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral)
                                                 Prelude.fromEnum)
                                              p))))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fSub") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'fSubs") _x))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"fBool") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0) _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           p = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'fBools") _x
                                         in
                                           if Data.Vector.Generic.null p then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                    (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                       (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (\ b -> if b then 1 else 0))
                                                          p))))
                                        ((Data.Monoid.<>)
                                           (let
                                              _v
                                                = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field @"fInt64") _x
                                            in
                                              if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 p = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"vec'fInt64s")
                                                       _x
                                               in
                                                 if Data.Vector.Generic.null p then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                          (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral)
                                                                p))))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field @"fBytes") _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             106)
                                                          ((\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                             _v))
                                                 ((Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                       (\ _v
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  114)
                                                               ((\ bs
                                                                   -> (Data.Monoid.<>)
                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                           (Prelude.fromIntegral
                                                                              (Data.ByteString.length
                                                                                 bs)))
                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                           bs))
                                                                  _v))
                                                       (Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"vec'fBytess")
                                                          _x))
                                                    ((Data.Monoid.<>)
                                                       (let
                                                          _v
                                                            = Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"fFloat")
                                                                _x
                                                        in
                                                          if (Prelude.==)
                                                               _v Data.ProtoLens.fieldDefault then
                                                              Data.Monoid.mempty
                                                          else
                                                              (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   125)
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putFixed32
                                                                   Data.ProtoLens.Encoding.Bytes.floatToWord
                                                                   _v))
                                                       ((Data.Monoid.<>)
                                                          (let
                                                             p = Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"vec'fFloats")
                                                                   _x
                                                           in
                                                             if Data.Vector.Generic.null p then
                                                                 Data.Monoid.mempty
                                                             else
                                                                 (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      130)
                                                                   ((\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                      (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                            ((Prelude..)
                                                                               Data.ProtoLens.Encoding.Bytes.putFixed32
                                                                               Data.ProtoLens.Encoding.Bytes.floatToWord)
                                                                            p))))
                                                          (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                             (Lens.Family2.view
                                                                Data.ProtoLens.unknownFields
                                                                _x)))))))))))))))))
instance Control.DeepSeq.NFData DummyMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DummyMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DummyMessage'fString x__)
                (Control.DeepSeq.deepseq
                   (_DummyMessage'fStrings x__)
                   (Control.DeepSeq.deepseq
                      (_DummyMessage'fInt32 x__)
                      (Control.DeepSeq.deepseq
                         (_DummyMessage'fInt32s x__)
                         (Control.DeepSeq.deepseq
                            (_DummyMessage'fEnum x__)
                            (Control.DeepSeq.deepseq
                               (_DummyMessage'fEnums x__)
                               (Control.DeepSeq.deepseq
                                  (_DummyMessage'fSub x__)
                                  (Control.DeepSeq.deepseq
                                     (_DummyMessage'fSubs x__)
                                     (Control.DeepSeq.deepseq
                                        (_DummyMessage'fBool x__)
                                        (Control.DeepSeq.deepseq
                                           (_DummyMessage'fBools x__)
                                           (Control.DeepSeq.deepseq
                                              (_DummyMessage'fInt64 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_DummyMessage'fInt64s x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_DummyMessage'fBytes x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_DummyMessage'fBytess x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_DummyMessage'fFloat x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_DummyMessage'fFloats x__)
                                                             ()))))))))))))))))
newtype DummyMessage'Enum'UnrecognizedValue
  = DummyMessage'Enum'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data DummyMessage'Enum
  = DummyMessage'ENUM_0 |
    DummyMessage'ENUM_1 |
    DummyMessage'ENUM_2 |
    DummyMessage'Enum'Unrecognized !DummyMessage'Enum'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum DummyMessage'Enum where
  maybeToEnum 0 = Prelude.Just DummyMessage'ENUM_0
  maybeToEnum 1 = Prelude.Just DummyMessage'ENUM_1
  maybeToEnum 2 = Prelude.Just DummyMessage'ENUM_2
  maybeToEnum k
    = Prelude.Just
        (DummyMessage'Enum'Unrecognized
           (DummyMessage'Enum'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum DummyMessage'ENUM_0 = "ENUM_0"
  showEnum DummyMessage'ENUM_1 = "ENUM_1"
  showEnum DummyMessage'ENUM_2 = "ENUM_2"
  showEnum
    (DummyMessage'Enum'Unrecognized (DummyMessage'Enum'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ENUM_0" = Prelude.Just DummyMessage'ENUM_0
    | (Prelude.==) k "ENUM_1" = Prelude.Just DummyMessage'ENUM_1
    | (Prelude.==) k "ENUM_2" = Prelude.Just DummyMessage'ENUM_2
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DummyMessage'Enum where
  minBound = DummyMessage'ENUM_0
  maxBound = DummyMessage'ENUM_2
instance Prelude.Enum DummyMessage'Enum where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Enum: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum DummyMessage'ENUM_0 = 0
  fromEnum DummyMessage'ENUM_1 = 1
  fromEnum DummyMessage'ENUM_2 = 2
  fromEnum
    (DummyMessage'Enum'Unrecognized (DummyMessage'Enum'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ DummyMessage'ENUM_2
    = Prelude.error
        "DummyMessage'Enum.succ: bad argument DummyMessage'ENUM_2. This value would be out of bounds."
  succ DummyMessage'ENUM_0 = DummyMessage'ENUM_1
  succ DummyMessage'ENUM_1 = DummyMessage'ENUM_2
  succ (DummyMessage'Enum'Unrecognized _)
    = Prelude.error
        "DummyMessage'Enum.succ: bad argument: unrecognized value"
  pred DummyMessage'ENUM_0
    = Prelude.error
        "DummyMessage'Enum.pred: bad argument DummyMessage'ENUM_0. This value would be out of bounds."
  pred DummyMessage'ENUM_1 = DummyMessage'ENUM_0
  pred DummyMessage'ENUM_2 = DummyMessage'ENUM_1
  pred (DummyMessage'Enum'Unrecognized _)
    = Prelude.error
        "DummyMessage'Enum.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DummyMessage'Enum where
  fieldDefault = DummyMessage'ENUM_0
instance Control.DeepSeq.NFData DummyMessage'Enum where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.fString' @:: Lens' DummyMessage'Sub Data.Text.Text@ -}
data DummyMessage'Sub
  = DummyMessage'Sub'_constructor {_DummyMessage'Sub'fString :: !Data.Text.Text,
                                   _DummyMessage'Sub'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DummyMessage'Sub where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DummyMessage'Sub "fString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DummyMessage'Sub'fString
           (\ x__ y__ -> x__ {_DummyMessage'Sub'fString = y__}))
        Prelude.id
instance Data.ProtoLens.Message DummyMessage'Sub where
  messageName _ = Data.Text.pack "grpcbin.DummyMessage.Sub"
  packedMessageDescriptor _
    = "\n\
      \\ETXSub\DC2\EM\n\
      \\bf_string\CAN\SOH \SOH(\tR\afString"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "f_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"fString")) ::
              Data.ProtoLens.FieldDescriptor DummyMessage'Sub
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fString__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DummyMessage'Sub'_unknownFields
        (\ x__ y__ -> x__ {_DummyMessage'Sub'_unknownFields = y__})
  defMessage
    = DummyMessage'Sub'_constructor
        {_DummyMessage'Sub'fString = Data.ProtoLens.fieldDefault,
         _DummyMessage'Sub'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DummyMessage'Sub
          -> Data.ProtoLens.Encoding.Bytes.Parser DummyMessage'Sub
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "f_string"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fString") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Sub"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"fString") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DummyMessage'Sub where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DummyMessage'Sub'_unknownFields x__)
             (Control.DeepSeq.deepseq (_DummyMessage'Sub'fString x__) ())
{- | Fields :
      -}
data EmptyMessage
  = EmptyMessage'_constructor {_EmptyMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EmptyMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message EmptyMessage where
  messageName _ = Data.Text.pack "grpcbin.EmptyMessage"
  packedMessageDescriptor _
    = "\n\
      \\fEmptyMessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EmptyMessage'_unknownFields
        (\ x__ y__ -> x__ {_EmptyMessage'_unknownFields = y__})
  defMessage
    = EmptyMessage'_constructor {_EmptyMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EmptyMessage -> Data.ProtoLens.Encoding.Bytes.Parser EmptyMessage
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EmptyMessage"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData EmptyMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_EmptyMessage'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.metadata' @:: Lens' HeadersMessage (Data.Map.Map Data.Text.Text HeadersMessage'Values)@ -}
data HeadersMessage
  = HeadersMessage'_constructor {_HeadersMessage'metadata :: !(Data.Map.Map Data.Text.Text HeadersMessage'Values),
                                 _HeadersMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeadersMessage "metadata" (Data.Map.Map Data.Text.Text HeadersMessage'Values) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersMessage'metadata
           (\ x__ y__ -> x__ {_HeadersMessage'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeadersMessage where
  messageName _ = Data.Text.pack "grpcbin.HeadersMessage"
  packedMessageDescriptor _
    = "\n\
      \\SO\&HeadersMessage\DC2A\n\
      \\bMetadata\CAN\SOH \ETX(\v2%.grpcbin.HeadersMessage.MetadataEntryR\bMetadata\SUB \n\
      \\ACKValues\DC2\SYN\n\
      \\ACKvalues\CAN\SOH \ETX(\tR\ACKvalues\SUB[\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.grpcbin.HeadersMessage.ValuesR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "Metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeadersMessage'MetadataEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"metadata")) ::
              Data.ProtoLens.FieldDescriptor HeadersMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeadersMessage'_unknownFields
        (\ x__ y__ -> x__ {_HeadersMessage'_unknownFields = y__})
  defMessage
    = HeadersMessage'_constructor
        {_HeadersMessage'metadata = Data.Map.empty,
         _HeadersMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeadersMessage
          -> Data.ProtoLens.Encoding.Bytes.Parser HeadersMessage
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !(entry :: HeadersMessage'MetadataEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                              "Metadata"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"metadata")
                                        (\ !t -> Data.Map.insert key value t) x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeadersMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key") (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value") (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: HeadersMessage'MetadataEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"metadata") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HeadersMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeadersMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HeadersMessage'metadata x__) ())
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.key' @:: Lens' HeadersMessage'MetadataEntry Data.Text.Text@
         * 'Proto.Protos.Grpcbin_Fields.value' @:: Lens' HeadersMessage'MetadataEntry HeadersMessage'Values@
         * 'Proto.Protos.Grpcbin_Fields.maybe'value' @:: Lens' HeadersMessage'MetadataEntry (Prelude.Maybe HeadersMessage'Values)@ -}
data HeadersMessage'MetadataEntry
  = HeadersMessage'MetadataEntry'_constructor {_HeadersMessage'MetadataEntry'key :: !Data.Text.Text,
                                               _HeadersMessage'MetadataEntry'value :: !(Prelude.Maybe HeadersMessage'Values),
                                               _HeadersMessage'MetadataEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersMessage'MetadataEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeadersMessage'MetadataEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersMessage'MetadataEntry'key
           (\ x__ y__ -> x__ {_HeadersMessage'MetadataEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HeadersMessage'MetadataEntry "value" HeadersMessage'Values where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersMessage'MetadataEntry'value
           (\ x__ y__ -> x__ {_HeadersMessage'MetadataEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HeadersMessage'MetadataEntry "maybe'value" (Prelude.Maybe HeadersMessage'Values) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersMessage'MetadataEntry'value
           (\ x__ y__ -> x__ {_HeadersMessage'MetadataEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeadersMessage'MetadataEntry where
  messageName _
    = Data.Text.pack "grpcbin.HeadersMessage.MetadataEntry"
  packedMessageDescriptor _
    = "\n\
      \\rMetadataEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.grpcbin.HeadersMessage.ValuesR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor HeadersMessage'MetadataEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HeadersMessage'Values)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor HeadersMessage'MetadataEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeadersMessage'MetadataEntry'_unknownFields
        (\ x__ y__
           -> x__ {_HeadersMessage'MetadataEntry'_unknownFields = y__})
  defMessage
    = HeadersMessage'MetadataEntry'_constructor
        {_HeadersMessage'MetadataEntry'key = Data.ProtoLens.fieldDefault,
         _HeadersMessage'MetadataEntry'value = Prelude.Nothing,
         _HeadersMessage'MetadataEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeadersMessage'MetadataEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser HeadersMessage'MetadataEntry
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetadataEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HeadersMessage'MetadataEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeadersMessage'MetadataEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HeadersMessage'MetadataEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_HeadersMessage'MetadataEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.values' @:: Lens' HeadersMessage'Values [Data.Text.Text]@
         * 'Proto.Protos.Grpcbin_Fields.vec'values' @:: Lens' HeadersMessage'Values (Data.Vector.Vector Data.Text.Text)@ -}
data HeadersMessage'Values
  = HeadersMessage'Values'_constructor {_HeadersMessage'Values'values :: !(Data.Vector.Vector Data.Text.Text),
                                        _HeadersMessage'Values'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersMessage'Values where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HeadersMessage'Values "values" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersMessage'Values'values
           (\ x__ y__ -> x__ {_HeadersMessage'Values'values = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HeadersMessage'Values "vec'values" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HeadersMessage'Values'values
           (\ x__ y__ -> x__ {_HeadersMessage'Values'values = y__}))
        Prelude.id
instance Data.ProtoLens.Message HeadersMessage'Values where
  messageName _ = Data.Text.pack "grpcbin.HeadersMessage.Values"
  packedMessageDescriptor _
    = "\n\
      \\ACKValues\DC2\SYN\n\
      \\ACKvalues\CAN\SOH \ETX(\tR\ACKvalues"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        values__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "values"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"values")) ::
              Data.ProtoLens.FieldDescriptor HeadersMessage'Values
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, values__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HeadersMessage'Values'_unknownFields
        (\ x__ y__ -> x__ {_HeadersMessage'Values'_unknownFields = y__})
  defMessage
    = HeadersMessage'Values'_constructor
        {_HeadersMessage'Values'values = Data.Vector.Generic.empty,
         _HeadersMessage'Values'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HeadersMessage'Values
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser HeadersMessage'Values
        loop x mutable'values
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'values)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'values") frozen'values x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'values y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'values
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'values <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'values)
          "Values"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'values") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HeadersMessage'Values where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HeadersMessage'Values'_unknownFields x__)
             (Control.DeepSeq.deepseq (_HeadersMessage'Values'values x__) ())
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.description' @:: Lens' IndexReply Data.Text.Text@
         * 'Proto.Protos.Grpcbin_Fields.endpoints' @:: Lens' IndexReply [IndexReply'Endpoint]@
         * 'Proto.Protos.Grpcbin_Fields.vec'endpoints' @:: Lens' IndexReply (Data.Vector.Vector IndexReply'Endpoint)@ -}
data IndexReply
  = IndexReply'_constructor {_IndexReply'description :: !Data.Text.Text,
                             _IndexReply'endpoints :: !(Data.Vector.Vector IndexReply'Endpoint),
                             _IndexReply'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IndexReply where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IndexReply "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexReply'description
           (\ x__ y__ -> x__ {_IndexReply'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IndexReply "endpoints" [IndexReply'Endpoint] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexReply'endpoints
           (\ x__ y__ -> x__ {_IndexReply'endpoints = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField IndexReply "vec'endpoints" (Data.Vector.Vector IndexReply'Endpoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexReply'endpoints
           (\ x__ y__ -> x__ {_IndexReply'endpoints = y__}))
        Prelude.id
instance Data.ProtoLens.Message IndexReply where
  messageName _ = Data.Text.pack "grpcbin.IndexReply"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \IndexReply\DC2 \n\
      \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2:\n\
      \\tendpoints\CAN\STX \ETX(\v2\FS.grpcbin.IndexReply.EndpointR\tendpoints\SUB@\n\
      \\bEndpoint\DC2\DC2\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor IndexReply
        endpoints__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "endpoints"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor IndexReply'Endpoint)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"endpoints")) ::
              Data.ProtoLens.FieldDescriptor IndexReply
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, endpoints__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IndexReply'_unknownFields
        (\ x__ y__ -> x__ {_IndexReply'_unknownFields = y__})
  defMessage
    = IndexReply'_constructor
        {_IndexReply'description = Data.ProtoLens.fieldDefault,
         _IndexReply'endpoints = Data.Vector.Generic.empty,
         _IndexReply'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IndexReply
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld IndexReply'Endpoint
             -> Data.ProtoLens.Encoding.Bytes.Parser IndexReply
        loop x mutable'endpoints
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'endpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'endpoints)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'endpoints") frozen'endpoints x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                                  mutable'endpoints
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "endpoints"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'endpoints y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'endpoints
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'endpoints <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'endpoints)
          "IndexReply"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'endpoints") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IndexReply where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IndexReply'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IndexReply'description x__)
                (Control.DeepSeq.deepseq (_IndexReply'endpoints x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.path' @:: Lens' IndexReply'Endpoint Data.Text.Text@
         * 'Proto.Protos.Grpcbin_Fields.description' @:: Lens' IndexReply'Endpoint Data.Text.Text@ -}
data IndexReply'Endpoint
  = IndexReply'Endpoint'_constructor {_IndexReply'Endpoint'path :: !Data.Text.Text,
                                      _IndexReply'Endpoint'description :: !Data.Text.Text,
                                      _IndexReply'Endpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IndexReply'Endpoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IndexReply'Endpoint "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexReply'Endpoint'path
           (\ x__ y__ -> x__ {_IndexReply'Endpoint'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IndexReply'Endpoint "description" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IndexReply'Endpoint'description
           (\ x__ y__ -> x__ {_IndexReply'Endpoint'description = y__}))
        Prelude.id
instance Data.ProtoLens.Message IndexReply'Endpoint where
  messageName _ = Data.Text.pack "grpcbin.IndexReply.Endpoint"
  packedMessageDescriptor _
    = "\n\
      \\bEndpoint\DC2\DC2\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2 \n\
      \\vdescription\CAN\STX \SOH(\tR\vdescription"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor IndexReply'Endpoint
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"description")) ::
              Data.ProtoLens.FieldDescriptor IndexReply'Endpoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, description__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IndexReply'Endpoint'_unknownFields
        (\ x__ y__ -> x__ {_IndexReply'Endpoint'_unknownFields = y__})
  defMessage
    = IndexReply'Endpoint'_constructor
        {_IndexReply'Endpoint'path = Data.ProtoLens.fieldDefault,
         _IndexReply'Endpoint'description = Data.ProtoLens.fieldDefault,
         _IndexReply'Endpoint'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IndexReply'Endpoint
          -> Data.ProtoLens.Encoding.Bytes.Parser IndexReply'Endpoint
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Endpoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"description") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData IndexReply'Endpoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IndexReply'Endpoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IndexReply'Endpoint'path x__)
                (Control.DeepSeq.deepseq
                   (_IndexReply'Endpoint'description x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Grpcbin_Fields.code' @:: Lens' SpecificErrorRequest Data.Word.Word32@
         * 'Proto.Protos.Grpcbin_Fields.reason' @:: Lens' SpecificErrorRequest Data.Text.Text@ -}
data SpecificErrorRequest
  = SpecificErrorRequest'_constructor {_SpecificErrorRequest'code :: !Data.Word.Word32,
                                       _SpecificErrorRequest'reason :: !Data.Text.Text,
                                       _SpecificErrorRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpecificErrorRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SpecificErrorRequest "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpecificErrorRequest'code
           (\ x__ y__ -> x__ {_SpecificErrorRequest'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SpecificErrorRequest "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SpecificErrorRequest'reason
           (\ x__ y__ -> x__ {_SpecificErrorRequest'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message SpecificErrorRequest where
  messageName _ = Data.Text.pack "grpcbin.SpecificErrorRequest"
  packedMessageDescriptor _
    = "\n\
      \\DC4SpecificErrorRequest\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\SYN\n\
      \\ACKreason\CAN\STX \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor SpecificErrorRequest
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"reason")) ::
              Data.ProtoLens.FieldDescriptor SpecificErrorRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SpecificErrorRequest'_unknownFields
        (\ x__ y__ -> x__ {_SpecificErrorRequest'_unknownFields = y__})
  defMessage
    = SpecificErrorRequest'_constructor
        {_SpecificErrorRequest'code = Data.ProtoLens.fieldDefault,
         _SpecificErrorRequest'reason = Data.ProtoLens.fieldDefault,
         _SpecificErrorRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SpecificErrorRequest
          -> Data.ProtoLens.Encoding.Bytes.Parser SpecificErrorRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SpecificErrorRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"reason") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SpecificErrorRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SpecificErrorRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SpecificErrorRequest'code x__)
                (Control.DeepSeq.deepseq (_SpecificErrorRequest'reason x__) ()))
data GRPCBin = GRPCBin {}
instance Data.ProtoLens.Service.Types.Service GRPCBin where
  type ServiceName GRPCBin = "GRPCBin"
  type ServicePackage GRPCBin = "grpcbin"
  type ServiceMethods GRPCBin = '["dummyBidirectionalStreamStream",
                                  "dummyClientStream",
                                  "dummyServerStream",
                                  "dummyUnary",
                                  "empty",
                                  "headersUnary",
                                  "index",
                                  "noResponseUnary",
                                  "randomError",
                                  "specificError"]
  packedServiceDescriptor _
    = "\n\
      \\aGRPCBin\DC25\n\
      \\ENQIndex\DC2\NAK.grpcbin.EmptyMessage\SUB\DC3.grpcbin.IndexReply\"\NUL\DC27\n\
      \\ENQEmpty\DC2\NAK.grpcbin.EmptyMessage\SUB\NAK.grpcbin.EmptyMessage\"\NUL\DC2<\n\
      \\n\
      \DummyUnary\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL\DC2E\n\
      \\DC1DummyServerStream\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL0\SOH\DC2E\n\
      \\DC1DummyClientStream\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL(\SOH\DC2T\n\
      \\RSDummyBidirectionalStreamStream\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL(\SOH0\SOH\DC2G\n\
      \\rSpecificError\DC2\GS.grpcbin.SpecificErrorRequest\SUB\NAK.grpcbin.EmptyMessage\"\NUL\DC2=\n\
      \\vRandomError\DC2\NAK.grpcbin.EmptyMessage\SUB\NAK.grpcbin.EmptyMessage\"\NUL\DC2@\n\
      \\fHeadersUnary\DC2\NAK.grpcbin.EmptyMessage\SUB\ETB.grpcbin.HeadersMessage\"\NUL\DC2A\n\
      \\SINoResponseUnary\DC2\NAK.grpcbin.EmptyMessage\SUB\NAK.grpcbin.EmptyMessage\"\NUL"
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "index" where
  type MethodName GRPCBin "index" = "Index"
  type MethodInput GRPCBin "index" = EmptyMessage
  type MethodOutput GRPCBin "index" = IndexReply
  type MethodStreamingType GRPCBin "index" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "empty" where
  type MethodName GRPCBin "empty" = "Empty"
  type MethodInput GRPCBin "empty" = EmptyMessage
  type MethodOutput GRPCBin "empty" = EmptyMessage
  type MethodStreamingType GRPCBin "empty" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "dummyUnary" where
  type MethodName GRPCBin "dummyUnary" = "DummyUnary"
  type MethodInput GRPCBin "dummyUnary" = DummyMessage
  type MethodOutput GRPCBin "dummyUnary" = DummyMessage
  type MethodStreamingType GRPCBin "dummyUnary" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "dummyServerStream" where
  type MethodName GRPCBin "dummyServerStream" = "DummyServerStream"
  type MethodInput GRPCBin "dummyServerStream" = DummyMessage
  type MethodOutput GRPCBin "dummyServerStream" = DummyMessage
  type MethodStreamingType GRPCBin "dummyServerStream" = 'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "dummyClientStream" where
  type MethodName GRPCBin "dummyClientStream" = "DummyClientStream"
  type MethodInput GRPCBin "dummyClientStream" = DummyMessage
  type MethodOutput GRPCBin "dummyClientStream" = DummyMessage
  type MethodStreamingType GRPCBin "dummyClientStream" = 'Data.ProtoLens.Service.Types.ClientStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "dummyBidirectionalStreamStream" where
  type MethodName GRPCBin "dummyBidirectionalStreamStream" = "DummyBidirectionalStreamStream"
  type MethodInput GRPCBin "dummyBidirectionalStreamStream" = DummyMessage
  type MethodOutput GRPCBin "dummyBidirectionalStreamStream" = DummyMessage
  type MethodStreamingType GRPCBin "dummyBidirectionalStreamStream" = 'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "specificError" where
  type MethodName GRPCBin "specificError" = "SpecificError"
  type MethodInput GRPCBin "specificError" = SpecificErrorRequest
  type MethodOutput GRPCBin "specificError" = EmptyMessage
  type MethodStreamingType GRPCBin "specificError" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "randomError" where
  type MethodName GRPCBin "randomError" = "RandomError"
  type MethodInput GRPCBin "randomError" = EmptyMessage
  type MethodOutput GRPCBin "randomError" = EmptyMessage
  type MethodStreamingType GRPCBin "randomError" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "headersUnary" where
  type MethodName GRPCBin "headersUnary" = "HeadersUnary"
  type MethodInput GRPCBin "headersUnary" = EmptyMessage
  type MethodOutput GRPCBin "headersUnary" = HeadersMessage
  type MethodStreamingType GRPCBin "headersUnary" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "noResponseUnary" where
  type MethodName GRPCBin "noResponseUnary" = "NoResponseUnary"
  type MethodInput GRPCBin "noResponseUnary" = EmptyMessage
  type MethodOutput GRPCBin "noResponseUnary" = EmptyMessage
  type MethodStreamingType GRPCBin "noResponseUnary" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DC4protos/grpcbin.proto\DC2\agrpcbin\"\210\SOH\n\
    \\SO\&HeadersMessage\DC2A\n\
    \\bMetadata\CAN\SOH \ETX(\v2%.grpcbin.HeadersMessage.MetadataEntryR\bMetadata\SUB \n\
    \\ACKValues\DC2\SYN\n\
    \\ACKvalues\CAN\SOH \ETX(\tR\ACKvalues\SUB[\n\
    \\rMetadataEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC24\n\
    \\ENQvalue\CAN\STX \SOH(\v2\RS.grpcbin.HeadersMessage.ValuesR\ENQvalue:\STX8\SOH\"B\n\
    \\DC4SpecificErrorRequest\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\rR\EOTcode\DC2\SYN\n\
    \\ACKreason\CAN\STX \SOH(\tR\ACKreason\"\SO\n\
    \\fEmptyMessage\"\222\EOT\n\
    \\fDummyMessage\DC2\EM\n\
    \\bf_string\CAN\SOH \SOH(\tR\afString\DC2\ESC\n\
    \\tf_strings\CAN\STX \ETX(\tR\bfStrings\DC2\ETB\n\
    \\af_int32\CAN\ETX \SOH(\ENQR\ACKfInt32\DC2\EM\n\
    \\bf_int32s\CAN\EOT \ETX(\ENQR\afInt32s\DC21\n\
    \\ACKf_enum\CAN\ENQ \SOH(\SO2\SUB.grpcbin.DummyMessage.EnumR\ENQfEnum\DC23\n\
    \\af_enums\CAN\ACK \ETX(\SO2\SUB.grpcbin.DummyMessage.EnumR\ACKfEnums\DC2.\n\
    \\ENQf_sub\CAN\a \SOH(\v2\EM.grpcbin.DummyMessage.SubR\EOTfSub\DC20\n\
    \\ACKf_subs\CAN\b \ETX(\v2\EM.grpcbin.DummyMessage.SubR\ENQfSubs\DC2\NAK\n\
    \\ACKf_bool\CAN\t \SOH(\bR\ENQfBool\DC2\ETB\n\
    \\af_bools\CAN\n\
    \ \ETX(\bR\ACKfBools\DC2\ETB\n\
    \\af_int64\CAN\v \SOH(\ETXR\ACKfInt64\DC2\EM\n\
    \\bf_int64s\CAN\f \ETX(\ETXR\afInt64s\DC2\ETB\n\
    \\af_bytes\CAN\r \SOH(\fR\ACKfBytes\DC2\EM\n\
    \\bf_bytess\CAN\SO \ETX(\fR\afBytess\DC2\ETB\n\
    \\af_float\CAN\SI \SOH(\STXR\ACKfFloat\DC2\EM\n\
    \\bf_floats\CAN\DLE \ETX(\STXR\afFloats\SUB \n\
    \\ETXSub\DC2\EM\n\
    \\bf_string\CAN\SOH \SOH(\tR\afString\"*\n\
    \\EOTEnum\DC2\n\
    \\n\
    \\ACKENUM_0\DLE\NUL\DC2\n\
    \\n\
    \\ACKENUM_1\DLE\SOH\DC2\n\
    \\n\
    \\ACKENUM_2\DLE\STX\"\172\SOH\n\
    \\n\
    \IndexReply\DC2 \n\
    \\vdescription\CAN\SOH \SOH(\tR\vdescription\DC2:\n\
    \\tendpoints\CAN\STX \ETX(\v2\FS.grpcbin.IndexReply.EndpointR\tendpoints\SUB@\n\
    \\bEndpoint\DC2\DC2\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpath\DC2 \n\
    \\vdescription\CAN\STX \SOH(\tR\vdescription2\168\ENQ\n\
    \\aGRPCBin\DC25\n\
    \\ENQIndex\DC2\NAK.grpcbin.EmptyMessage\SUB\DC3.grpcbin.IndexReply\"\NUL\DC27\n\
    \\ENQEmpty\DC2\NAK.grpcbin.EmptyMessage\SUB\NAK.grpcbin.EmptyMessage\"\NUL\DC2<\n\
    \\n\
    \DummyUnary\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL\DC2E\n\
    \\DC1DummyServerStream\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL0\SOH\DC2E\n\
    \\DC1DummyClientStream\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL(\SOH\DC2T\n\
    \\RSDummyBidirectionalStreamStream\DC2\NAK.grpcbin.DummyMessage\SUB\NAK.grpcbin.DummyMessage\"\NUL(\SOH0\SOH\DC2G\n\
    \\rSpecificError\DC2\GS.grpcbin.SpecificErrorRequest\SUB\NAK.grpcbin.EmptyMessage\"\NUL\DC2=\n\
    \\vRandomError\DC2\NAK.grpcbin.EmptyMessage\SUB\NAK.grpcbin.EmptyMessage\"\NUL\DC2@\n\
    \\fHeadersUnary\DC2\NAK.grpcbin.EmptyMessage\SUB\ETB.grpcbin.HeadersMessage\"\NUL\DC2A\n\
    \\SINoResponseUnary\DC2\NAK.grpcbin.EmptyMessage\SUB\NAK.grpcbin.EmptyMessage\"\NULJ\210\EM\n\
    \\ACK\DC2\EOT\NUL\NULL\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\DLE\n\
    \\n\
    \\n\
    \\STX\ACK\NUL\DC2\EOT\EOT\NUL\EM\SOH\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\EOT\b\SI\n\
    \\FS\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\ACK\STX1\SUB\SI This endpoint\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\ACK\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\ACK\f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\ACK#-\n\
    \R\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\b\STX3\SUBE Unary endpoint that takes no argument and replies an empty message.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\b\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\b\f\CAN\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\b#/\n\
    \B\n\
    \\EOT\ACK\NUL\STX\STX\DC2\ETX\n\
    \\STX8\SUB5 Unary endpoint that replies a received DummyMessage\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\SOH\DC2\ETX\n\
    \\ACK\DLE\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\STX\DC2\ETX\n\
    \\DC1\GS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\STX\ETX\DC2\ETX\n\
    \(4\n\
    \Q\n\
    \\EOT\ACK\NUL\STX\ETX\DC2\ETX\f\STXF\SUBD Stream endpoint that sends back 10 times the received DummyMessage\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\SOH\DC2\ETX\f\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\STX\DC2\ETX\f\CAN$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ACK\DC2\ETX\f/5\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ETX\ETX\DC2\ETX\f6B\n\
    \d\n\
    \\EOT\ACK\NUL\STX\EOT\DC2\ETX\SO\STXF\SUBW Stream endpoint that receives 10 DummyMessages and replies with the last received one\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\SOH\DC2\ETX\SO\ACK\ETB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ENQ\DC2\ETX\SO\CAN\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\STX\DC2\ETX\SO\US+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\EOT\ETX\DC2\ETX\SO6B\n\
    \_\n\
    \\EOT\ACK\NUL\STX\ENQ\DC2\ETX\DLE\STXZ\SUBR Stream endpoint that sends back a received DummyMessage indefinitely (chat mode)\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\SOH\DC2\ETX\DLE\ACK$\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ENQ\DC2\ETX\DLE%+\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\STX\DC2\ETX\DLE,8\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ACK\DC2\ETX\DLECI\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ENQ\ETX\DC2\ETX\DLEJV\n\
    \J\n\
    \\EOT\ACK\NUL\STX\ACK\DC2\ETX\DC2\STXC\SUB= Unary endpoint that raises a specified (by code) gRPC error\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\SOH\DC2\ETX\DC2\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\STX\DC2\ETX\DC2\DC4(\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\ACK\ETX\DC2\ETX\DC23?\n\
    \=\n\
    \\EOT\ACK\NUL\STX\a\DC2\ETX\DC4\STX9\SUB0 Unary endpoint that raises a random gRPC error\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\SOH\DC2\ETX\DC4\ACK\DC1\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\STX\DC2\ETX\DC4\DC2\RS\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\a\ETX\DC2\ETX\DC4)5\n\
    \2\n\
    \\EOT\ACK\NUL\STX\b\DC2\ETX\SYN\STX<\SUB% Unary endpoint that returns headers\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\SOH\DC2\ETX\SYN\ACK\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\STX\DC2\ETX\SYN\DC3\US\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\b\ETX\DC2\ETX\SYN*8\n\
    \6\n\
    \\EOT\ACK\NUL\STX\t\DC2\ETX\CAN\STX=\SUB) Unary endpoint that returns no respnose\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\SOH\DC2\ETX\CAN\ACK\NAK\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\STX\DC2\ETX\CAN\SYN\"\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\t\ETX\DC2\ETX\CAN-9\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\SYN\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\FS\STX\RS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\FS\n\
    \\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\GS\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\GS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\GS\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\GS\DC4\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\GS\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\US\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\US\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\SYN\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\US!\"\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL%\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX#\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX#\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX#\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX#\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX$\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX$\t\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX$\DC2\DC3\n\
    \\t\n\
    \\STX\EOT\STX\DC2\ETX'\NUL\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX'\b\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT)\NULC\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX)\b\DC4\n\
    \\f\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\EOT*\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\ETX*\n\
    \\r\n\
    \\r\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\ETX+\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ENQ\DC2\ETX+\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\ETX+\v\DC3\n\
    \\SO\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\ETX+\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\ETX\EOT\NUL\DC2\EOT-\STX1\ETX\n\
    \\f\n\
    \\ENQ\EOT\ETX\EOT\NUL\SOH\DC2\ETX-\a\v\n\
    \\r\n\
    \\ACK\EOT\ETX\EOT\NUL\STX\NUL\DC2\ETX.\EOT\SI\n\
    \\SO\n\
    \\a\EOT\ETX\EOT\NUL\STX\NUL\SOH\DC2\ETX.\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\ETX\EOT\NUL\STX\NUL\STX\DC2\ETX.\r\SO\n\
    \\r\n\
    \\ACK\EOT\ETX\EOT\NUL\STX\SOH\DC2\ETX/\EOT\SI\n\
    \\SO\n\
    \\a\EOT\ETX\EOT\NUL\STX\SOH\SOH\DC2\ETX/\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\ETX\EOT\NUL\STX\SOH\STX\DC2\ETX/\r\SO\n\
    \\r\n\
    \\ACK\EOT\ETX\EOT\NUL\STX\STX\DC2\ETX0\EOT\SI\n\
    \\SO\n\
    \\a\EOT\ETX\EOT\NUL\STX\STX\SOH\DC2\ETX0\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\ETX\EOT\NUL\STX\STX\STX\DC2\ETX0\r\SO\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX2\STX\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX2\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX2\DC4\NAK\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX3\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX3\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX3\RS\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX4\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX4\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX4\b\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX4\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX5\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX5\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX5\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX5\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX6\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\ETX6\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX6\a\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX6\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX7\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ACK\DC2\ETX7\v\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX7\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX7\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX8\STX\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ACK\DC2\ETX8\STX\ENQ\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX8\ACK\v\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX8\SO\SI\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ACK\DC2\ETX9\v\SO\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETX9\SI\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETX9\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX:\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\ETX:\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX:\a\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX:\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETX;\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\ETX;\v\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETX;\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETX;\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETX<\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ENQ\DC2\ETX<\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETX<\b\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETX<\DC2\DC4\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETX=\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ENQ\DC2\ETX=\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETX=\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETX=\ESC\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETX>\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ENQ\DC2\ETX>\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETX>\b\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETX>\DC2\DC4\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\r\DC2\ETX?\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ENQ\DC2\ETX?\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\ETX?\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\ETX?\FS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SO\DC2\ETX@\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ENQ\DC2\ETX@\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\SOH\DC2\ETX@\b\SI\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ETX\DC2\ETX@\DC2\DC4\n\
    \\132\SOH\n\
    \\EOT\EOT\ETX\STX\SI\DC2\ETXA\STX\US\"w TODO: timestamp, duration, oneof, any, maps, fieldmask, wrapper type, struct, listvalue, value, nullvalue, deprecated\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\ENQ\DC2\ETXA\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\SOH\DC2\ETXA\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\ETX\DC2\ETXA\FS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTE\NULL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXE\b\DC2\n\
    \\f\n\
    \\EOT\EOT\EOT\ETX\NUL\DC2\EOTF\STXI\ETX\n\
    \\f\n\
    \\ENQ\EOT\EOT\ETX\NUL\SOH\DC2\ETXF\n\
    \\DC2\n\
    \\r\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\NUL\DC2\ETXG\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ENQ\DC2\ETXG\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\SOH\DC2\ETXG\v\SI\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\NUL\ETX\DC2\ETXG\DC2\DC3\n\
    \\r\n\
    \\ACK\EOT\EOT\ETX\NUL\STX\SOH\DC2\ETXH\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ENQ\DC2\ETXH\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\SOH\DC2\ETXH\v\SYN\n\
    \\SO\n\
    \\a\EOT\EOT\ETX\NUL\STX\SOH\ETX\DC2\ETXH\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXJ\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXJ\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXJ\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXJ\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXK\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\ETXK\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXK\DC4\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXK !b\ACKproto3"
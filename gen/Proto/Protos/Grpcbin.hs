{- This file was auto-generated from protos/grpcbin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Protos.Grpcbin
       (GRPCBin(..), DummyMessage(), DummyMessage'Enum(..),
        DummyMessage'Enum(), DummyMessage'Enum'UnrecognizedValue,
        DummyMessage'Sub(), EmptyMessage(), HeadersMessage(),
        HeadersMessage'MetadataEntry(), HeadersMessage'Values(),
        IndexReply(), IndexReply'Endpoint(), SpecificErrorRequest())
       where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Lens.Labels.Prism
       as Lens.Labels.Prism
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

{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.fString' @:: Lens' DummyMessage Data.Text.Text@
    * 'Proto.Protos.Grpcbin_Fields.fStrings' @:: Lens' DummyMessage [Data.Text.Text]@
    * 'Proto.Protos.Grpcbin_Fields.fInt32' @:: Lens' DummyMessage Data.Int.Int32@
    * 'Proto.Protos.Grpcbin_Fields.fInt32s' @:: Lens' DummyMessage [Data.Int.Int32]@
    * 'Proto.Protos.Grpcbin_Fields.fEnum' @:: Lens' DummyMessage DummyMessage'Enum@
    * 'Proto.Protos.Grpcbin_Fields.fEnums' @:: Lens' DummyMessage [DummyMessage'Enum]@
    * 'Proto.Protos.Grpcbin_Fields.fSub' @:: Lens' DummyMessage DummyMessage'Sub@
    * 'Proto.Protos.Grpcbin_Fields.maybe'fSub' @:: Lens' DummyMessage (Prelude.Maybe DummyMessage'Sub)@
    * 'Proto.Protos.Grpcbin_Fields.fSubs' @:: Lens' DummyMessage [DummyMessage'Sub]@
    * 'Proto.Protos.Grpcbin_Fields.fBool' @:: Lens' DummyMessage Prelude.Bool@
    * 'Proto.Protos.Grpcbin_Fields.fBools' @:: Lens' DummyMessage [Prelude.Bool]@
    * 'Proto.Protos.Grpcbin_Fields.fInt64' @:: Lens' DummyMessage Data.Int.Int64@
    * 'Proto.Protos.Grpcbin_Fields.fInt64s' @:: Lens' DummyMessage [Data.Int.Int64]@
    * 'Proto.Protos.Grpcbin_Fields.fBytes' @:: Lens' DummyMessage Data.ByteString.ByteString@
    * 'Proto.Protos.Grpcbin_Fields.fBytess' @:: Lens' DummyMessage [Data.ByteString.ByteString]@
    * 'Proto.Protos.Grpcbin_Fields.fFloat' @:: Lens' DummyMessage Prelude.Float@
    * 'Proto.Protos.Grpcbin_Fields.fFloats' @:: Lens' DummyMessage [Prelude.Float]@
 -}
data DummyMessage = DummyMessage{_DummyMessage'fString ::
                                 !Data.Text.Text,
                                 _DummyMessage'fStrings :: ![Data.Text.Text],
                                 _DummyMessage'fInt32 :: !Data.Int.Int32,
                                 _DummyMessage'fInt32s :: ![Data.Int.Int32],
                                 _DummyMessage'fEnum :: !DummyMessage'Enum,
                                 _DummyMessage'fEnums :: ![DummyMessage'Enum],
                                 _DummyMessage'fSub :: !(Prelude.Maybe DummyMessage'Sub),
                                 _DummyMessage'fSubs :: ![DummyMessage'Sub],
                                 _DummyMessage'fBool :: !Prelude.Bool,
                                 _DummyMessage'fBools :: ![Prelude.Bool],
                                 _DummyMessage'fInt64 :: !Data.Int.Int64,
                                 _DummyMessage'fInt64s :: ![Data.Int.Int64],
                                 _DummyMessage'fBytes :: !Data.ByteString.ByteString,
                                 _DummyMessage'fBytess :: ![Data.ByteString.ByteString],
                                 _DummyMessage'fFloat :: !Prelude.Float,
                                 _DummyMessage'fFloats :: ![Prelude.Float],
                                 _DummyMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DummyMessage where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DummyMessage "fString"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fString
                 (\ x__ y__ -> x__{_DummyMessage'fString = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fStrings"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fStrings
                 (\ x__ y__ -> x__{_DummyMessage'fStrings = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fInt32"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fInt32
                 (\ x__ y__ -> x__{_DummyMessage'fInt32 = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fInt32s"
           ([Data.Int.Int32])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fInt32s
                 (\ x__ y__ -> x__{_DummyMessage'fInt32s = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fEnum"
           (DummyMessage'Enum)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fEnum
                 (\ x__ y__ -> x__{_DummyMessage'fEnum = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fEnums"
           ([DummyMessage'Enum])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fEnums
                 (\ x__ y__ -> x__{_DummyMessage'fEnums = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fSub"
           (DummyMessage'Sub)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fSub
                 (\ x__ y__ -> x__{_DummyMessage'fSub = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' DummyMessage "maybe'fSub"
           (Prelude.Maybe DummyMessage'Sub)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fSub
                 (\ x__ y__ -> x__{_DummyMessage'fSub = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fSubs"
           ([DummyMessage'Sub])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fSubs
                 (\ x__ y__ -> x__{_DummyMessage'fSubs = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fBool" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fBool
                 (\ x__ y__ -> x__{_DummyMessage'fBool = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fBools"
           ([Prelude.Bool])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fBools
                 (\ x__ y__ -> x__{_DummyMessage'fBools = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fInt64"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fInt64
                 (\ x__ y__ -> x__{_DummyMessage'fInt64 = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fInt64s"
           ([Data.Int.Int64])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fInt64s
                 (\ x__ y__ -> x__{_DummyMessage'fInt64s = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fBytes"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fBytes
                 (\ x__ y__ -> x__{_DummyMessage'fBytes = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fBytess"
           ([Data.ByteString.ByteString])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fBytess
                 (\ x__ y__ -> x__{_DummyMessage'fBytess = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fFloat" (Prelude.Float)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fFloat
                 (\ x__ y__ -> x__{_DummyMessage'fFloat = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DummyMessage "fFloats"
           ([Prelude.Float])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'fFloats
                 (\ x__ y__ -> x__{_DummyMessage'fFloats = y__}))
              Prelude.id
instance Data.ProtoLens.Message DummyMessage where
        messageName _ = Data.Text.pack "grpcbin.DummyMessage"
        fieldsByTag
          = let fString__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_string"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fString")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fStrings__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_strings"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fStrings")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fInt32__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_int32"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt32")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fInt32s__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_int32s"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt32s")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fEnum__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_enum"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor DummyMessage'Enum)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fEnum")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fEnums__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_enums"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor DummyMessage'Enum)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fEnums")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fSub__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_sub"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DummyMessage'Sub)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fSub")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fSubs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_subs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DummyMessage'Sub)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fSubs")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fBool__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_bool"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBool")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fBools__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_bools"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBools")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fInt64__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_int64"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt64")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fInt64s__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_int64s"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fInt64s")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBytes")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fBytess__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_bytess"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fBytess")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fFloat__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_float"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fFloat")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
                fFloats__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_floats"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fFloats")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage
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
          = Lens.Family2.Unchecked.lens _DummyMessage'_unknownFields
              (\ x__ y__ -> x__{_DummyMessage'_unknownFields = y__})
        defMessage
          = DummyMessage{_DummyMessage'fString = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fStrings = [],
                         _DummyMessage'fInt32 = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fInt32s = [],
                         _DummyMessage'fEnum = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fEnums = [], _DummyMessage'fSub = Prelude.Nothing,
                         _DummyMessage'fSubs = [],
                         _DummyMessage'fBool = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fBools = [],
                         _DummyMessage'fInt64 = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fInt64s = [],
                         _DummyMessage'fBytes = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fBytess = [],
                         _DummyMessage'fFloat = Data.ProtoLens.fieldDefault,
                         _DummyMessage'fFloats = [], _DummyMessage'_unknownFields = ([])}
instance Control.DeepSeq.NFData DummyMessage where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DummyMessage'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DummyMessage'fString x__)
                   (Control.DeepSeq.deepseq (_DummyMessage'fStrings x__)
                      (Control.DeepSeq.deepseq (_DummyMessage'fInt32 x__)
                         (Control.DeepSeq.deepseq (_DummyMessage'fInt32s x__)
                            (Control.DeepSeq.deepseq (_DummyMessage'fEnum x__)
                               (Control.DeepSeq.deepseq (_DummyMessage'fEnums x__)
                                  (Control.DeepSeq.deepseq (_DummyMessage'fSub x__)
                                     (Control.DeepSeq.deepseq (_DummyMessage'fSubs x__)
                                        (Control.DeepSeq.deepseq (_DummyMessage'fBool x__)
                                           (Control.DeepSeq.deepseq (_DummyMessage'fBools x__)
                                              (Control.DeepSeq.deepseq (_DummyMessage'fInt64 x__)
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
                                                                (())))))))))))))))))
data DummyMessage'Enum = DummyMessage'ENUM_0
                       | DummyMessage'ENUM_1
                       | DummyMessage'ENUM_2
                       | DummyMessage'Enum'Unrecognized !DummyMessage'Enum'UnrecognizedValue
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype DummyMessage'Enum'UnrecognizedValue = DummyMessage'Enum'UnrecognizedValue Data.Int.Int32
                                                deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
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
          (DummyMessage'Enum'Unrecognized
             (DummyMessage'Enum'UnrecognizedValue k))
          = Prelude.show k
        readEnum "ENUM_0" = Prelude.Just DummyMessage'ENUM_0
        readEnum "ENUM_1" = Prelude.Just DummyMessage'ENUM_1
        readEnum "ENUM_2" = Prelude.Just DummyMessage'ENUM_2
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded DummyMessage'Enum where
        minBound = DummyMessage'ENUM_0
        maxBound = DummyMessage'ENUM_2
instance Prelude.Enum DummyMessage'Enum where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum Enum: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum DummyMessage'ENUM_0 = 0
        fromEnum DummyMessage'ENUM_1 = 1
        fromEnum DummyMessage'ENUM_2 = 2
        fromEnum
          (DummyMessage'Enum'Unrecognized
             (DummyMessage'Enum'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ DummyMessage'ENUM_2
          = Prelude.error
              "DummyMessage'Enum.succ: bad argument DummyMessage'ENUM_2. This value would be out of bounds."
        succ DummyMessage'ENUM_0 = DummyMessage'ENUM_1
        succ DummyMessage'ENUM_1 = DummyMessage'ENUM_2
        succ _
          = Prelude.error
              "DummyMessage'Enum.succ: bad argument: unrecognized value"
        pred DummyMessage'ENUM_0
          = Prelude.error
              "DummyMessage'Enum.pred: bad argument DummyMessage'ENUM_0. This value would be out of bounds."
        pred DummyMessage'ENUM_1 = DummyMessage'ENUM_0
        pred DummyMessage'ENUM_2 = DummyMessage'ENUM_1
        pred _
          = Prelude.error
              "DummyMessage'Enum.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault DummyMessage'Enum where
        fieldDefault = DummyMessage'ENUM_0
instance Control.DeepSeq.NFData DummyMessage'Enum where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.fString' @:: Lens' DummyMessage'Sub Data.Text.Text@
 -}
data DummyMessage'Sub = DummyMessage'Sub{_DummyMessage'Sub'fString
                                         :: !Data.Text.Text,
                                         _DummyMessage'Sub'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DummyMessage'Sub where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DummyMessage'Sub "fString"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DummyMessage'Sub'fString
                 (\ x__ y__ -> x__{_DummyMessage'Sub'fString = y__}))
              Prelude.id
instance Data.ProtoLens.Message DummyMessage'Sub where
        messageName _ = Data.Text.pack "grpcbin.DummyMessage.Sub"
        fieldsByTag
          = let fString__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "f_string"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fString")))
                      :: Data.ProtoLens.FieldDescriptor DummyMessage'Sub
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, fString__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _DummyMessage'Sub'_unknownFields
              (\ x__ y__ -> x__{_DummyMessage'Sub'_unknownFields = y__})
        defMessage
          = DummyMessage'Sub{_DummyMessage'Sub'fString =
                               Data.ProtoLens.fieldDefault,
                             _DummyMessage'Sub'_unknownFields = ([])}
instance Control.DeepSeq.NFData DummyMessage'Sub where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DummyMessage'Sub'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DummyMessage'Sub'fString x__) (()))
{- | Fields :

 -}
data EmptyMessage = EmptyMessage{_EmptyMessage'_unknownFields ::
                                 !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EmptyMessage where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message EmptyMessage where
        messageName _ = Data.Text.pack "grpcbin.EmptyMessage"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _EmptyMessage'_unknownFields
              (\ x__ y__ -> x__{_EmptyMessage'_unknownFields = y__})
        defMessage = EmptyMessage{_EmptyMessage'_unknownFields = ([])}
instance Control.DeepSeq.NFData EmptyMessage where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_EmptyMessage'_unknownFields x__) (())
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.metadata' @:: Lens' HeadersMessage
  (Data.Map.Map Data.Text.Text HeadersMessage'Values)@
 -}
data HeadersMessage = HeadersMessage{_HeadersMessage'metadata ::
                                     !(Data.Map.Map Data.Text.Text HeadersMessage'Values),
                                     _HeadersMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersMessage where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' HeadersMessage "metadata"
           (Data.Map.Map Data.Text.Text HeadersMessage'Values)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HeadersMessage'metadata
                 (\ x__ y__ -> x__{_HeadersMessage'metadata = y__}))
              Prelude.id
instance Data.ProtoLens.Message HeadersMessage where
        messageName _ = Data.Text.pack "grpcbin.HeadersMessage"
        fieldsByTag
          = let metadata__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "Metadata"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor HeadersMessage'MetadataEntry)
                      (Data.ProtoLens.MapField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key"))
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value"))
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "metadata")))
                      :: Data.ProtoLens.FieldDescriptor HeadersMessage
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, metadata__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HeadersMessage'_unknownFields
              (\ x__ y__ -> x__{_HeadersMessage'_unknownFields = y__})
        defMessage
          = HeadersMessage{_HeadersMessage'metadata = Data.Map.empty,
                           _HeadersMessage'_unknownFields = ([])}
instance Control.DeepSeq.NFData HeadersMessage where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HeadersMessage'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HeadersMessage'metadata x__) (()))
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.key' @:: Lens' HeadersMessage'MetadataEntry Data.Text.Text@
    * 'Proto.Protos.Grpcbin_Fields.value' @:: Lens' HeadersMessage'MetadataEntry HeadersMessage'Values@
    * 'Proto.Protos.Grpcbin_Fields.maybe'value' @:: Lens' HeadersMessage'MetadataEntry
  (Prelude.Maybe HeadersMessage'Values)@
 -}
data HeadersMessage'MetadataEntry = HeadersMessage'MetadataEntry{_HeadersMessage'MetadataEntry'key
                                                                 :: !Data.Text.Text,
                                                                 _HeadersMessage'MetadataEntry'value
                                                                 ::
                                                                 !(Prelude.Maybe
                                                                     HeadersMessage'Values),
                                                                 _HeadersMessage'MetadataEntry'_unknownFields
                                                                 :: !Data.ProtoLens.FieldSet}
                                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersMessage'MetadataEntry where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' HeadersMessage'MetadataEntry "key"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HeadersMessage'MetadataEntry'key
                 (\ x__ y__ -> x__{_HeadersMessage'MetadataEntry'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HeadersMessage'MetadataEntry "value"
           (HeadersMessage'Values)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HeadersMessage'MetadataEntry'value
                 (\ x__ y__ -> x__{_HeadersMessage'MetadataEntry'value = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' HeadersMessage'MetadataEntry
           "maybe'value"
           (Prelude.Maybe HeadersMessage'Values)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HeadersMessage'MetadataEntry'value
                 (\ x__ y__ -> x__{_HeadersMessage'MetadataEntry'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message HeadersMessage'MetadataEntry where
        messageName _
          = Data.Text.pack "grpcbin.HeadersMessage.MetadataEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor HeadersMessage'MetadataEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor HeadersMessage'Values)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")))
                      :: Data.ProtoLens.FieldDescriptor HeadersMessage'MetadataEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _HeadersMessage'MetadataEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_HeadersMessage'MetadataEntry'_unknownFields = y__})
        defMessage
          = HeadersMessage'MetadataEntry{_HeadersMessage'MetadataEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _HeadersMessage'MetadataEntry'value = Prelude.Nothing,
                                         _HeadersMessage'MetadataEntry'_unknownFields = ([])}
instance Control.DeepSeq.NFData HeadersMessage'MetadataEntry where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_HeadersMessage'MetadataEntry'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HeadersMessage'MetadataEntry'key x__)
                   (Control.DeepSeq.deepseq (_HeadersMessage'MetadataEntry'value x__)
                      (())))
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.values' @:: Lens' HeadersMessage'Values [Data.Text.Text]@
 -}
data HeadersMessage'Values = HeadersMessage'Values{_HeadersMessage'Values'values
                                                   :: ![Data.Text.Text],
                                                   _HeadersMessage'Values'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HeadersMessage'Values where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' HeadersMessage'Values "values"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HeadersMessage'Values'values
                 (\ x__ y__ -> x__{_HeadersMessage'Values'values = y__}))
              Prelude.id
instance Data.ProtoLens.Message HeadersMessage'Values where
        messageName _ = Data.Text.pack "grpcbin.HeadersMessage.Values"
        fieldsByTag
          = let values__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "values"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "values")))
                      :: Data.ProtoLens.FieldDescriptor HeadersMessage'Values
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, values__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HeadersMessage'Values'_unknownFields
              (\ x__ y__ -> x__{_HeadersMessage'Values'_unknownFields = y__})
        defMessage
          = HeadersMessage'Values{_HeadersMessage'Values'values = [],
                                  _HeadersMessage'Values'_unknownFields = ([])}
instance Control.DeepSeq.NFData HeadersMessage'Values where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HeadersMessage'Values'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HeadersMessage'Values'values x__) (()))
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.description' @:: Lens' IndexReply Data.Text.Text@
    * 'Proto.Protos.Grpcbin_Fields.endpoints' @:: Lens' IndexReply [IndexReply'Endpoint]@
 -}
data IndexReply = IndexReply{_IndexReply'description ::
                             !Data.Text.Text,
                             _IndexReply'endpoints :: ![IndexReply'Endpoint],
                             _IndexReply'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IndexReply where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' IndexReply "description"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _IndexReply'description
                 (\ x__ y__ -> x__{_IndexReply'description = y__}))
              Prelude.id
instance Lens.Labels.HasLens' IndexReply "endpoints"
           ([IndexReply'Endpoint])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _IndexReply'endpoints
                 (\ x__ y__ -> x__{_IndexReply'endpoints = y__}))
              Prelude.id
instance Data.ProtoLens.Message IndexReply where
        messageName _ = Data.Text.pack "grpcbin.IndexReply"
        fieldsByTag
          = let description__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "description"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "description")))
                      :: Data.ProtoLens.FieldDescriptor IndexReply
                endpoints__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "endpoints"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor IndexReply'Endpoint)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "endpoints")))
                      :: Data.ProtoLens.FieldDescriptor IndexReply
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, description__field_descriptor),
                 (Data.ProtoLens.Tag 2, endpoints__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _IndexReply'_unknownFields
              (\ x__ y__ -> x__{_IndexReply'_unknownFields = y__})
        defMessage
          = IndexReply{_IndexReply'description = Data.ProtoLens.fieldDefault,
                       _IndexReply'endpoints = [], _IndexReply'_unknownFields = ([])}
instance Control.DeepSeq.NFData IndexReply where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_IndexReply'_unknownFields x__)
                (Control.DeepSeq.deepseq (_IndexReply'description x__)
                   (Control.DeepSeq.deepseq (_IndexReply'endpoints x__) (())))
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.path' @:: Lens' IndexReply'Endpoint Data.Text.Text@
    * 'Proto.Protos.Grpcbin_Fields.description' @:: Lens' IndexReply'Endpoint Data.Text.Text@
 -}
data IndexReply'Endpoint = IndexReply'Endpoint{_IndexReply'Endpoint'path
                                               :: !Data.Text.Text,
                                               _IndexReply'Endpoint'description :: !Data.Text.Text,
                                               _IndexReply'Endpoint'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IndexReply'Endpoint where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' IndexReply'Endpoint "path"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _IndexReply'Endpoint'path
                 (\ x__ y__ -> x__{_IndexReply'Endpoint'path = y__}))
              Prelude.id
instance Lens.Labels.HasLens' IndexReply'Endpoint "description"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _IndexReply'Endpoint'description
                 (\ x__ y__ -> x__{_IndexReply'Endpoint'description = y__}))
              Prelude.id
instance Data.ProtoLens.Message IndexReply'Endpoint where
        messageName _ = Data.Text.pack "grpcbin.IndexReply.Endpoint"
        fieldsByTag
          = let path__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "path"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")))
                      :: Data.ProtoLens.FieldDescriptor IndexReply'Endpoint
                description__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "description"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "description")))
                      :: Data.ProtoLens.FieldDescriptor IndexReply'Endpoint
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, path__field_descriptor),
                 (Data.ProtoLens.Tag 2, description__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _IndexReply'Endpoint'_unknownFields
              (\ x__ y__ -> x__{_IndexReply'Endpoint'_unknownFields = y__})
        defMessage
          = IndexReply'Endpoint{_IndexReply'Endpoint'path =
                                  Data.ProtoLens.fieldDefault,
                                _IndexReply'Endpoint'description = Data.ProtoLens.fieldDefault,
                                _IndexReply'Endpoint'_unknownFields = ([])}
instance Control.DeepSeq.NFData IndexReply'Endpoint where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_IndexReply'Endpoint'_unknownFields x__)
                (Control.DeepSeq.deepseq (_IndexReply'Endpoint'path x__)
                   (Control.DeepSeq.deepseq (_IndexReply'Endpoint'description x__)
                      (())))
{- | Fields :

    * 'Proto.Protos.Grpcbin_Fields.code' @:: Lens' SpecificErrorRequest Data.Word.Word32@
    * 'Proto.Protos.Grpcbin_Fields.reason' @:: Lens' SpecificErrorRequest Data.Text.Text@
 -}
data SpecificErrorRequest = SpecificErrorRequest{_SpecificErrorRequest'code
                                                 :: !Data.Word.Word32,
                                                 _SpecificErrorRequest'reason :: !Data.Text.Text,
                                                 _SpecificErrorRequest'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpecificErrorRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' SpecificErrorRequest "code"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SpecificErrorRequest'code
                 (\ x__ y__ -> x__{_SpecificErrorRequest'code = y__}))
              Prelude.id
instance Lens.Labels.HasLens' SpecificErrorRequest "reason"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SpecificErrorRequest'reason
                 (\ x__ y__ -> x__{_SpecificErrorRequest'reason = y__}))
              Prelude.id
instance Data.ProtoLens.Message SpecificErrorRequest where
        messageName _ = Data.Text.pack "grpcbin.SpecificErrorRequest"
        fieldsByTag
          = let code__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "code")))
                      :: Data.ProtoLens.FieldDescriptor SpecificErrorRequest
                reason__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "reason"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "reason")))
                      :: Data.ProtoLens.FieldDescriptor SpecificErrorRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, code__field_descriptor),
                 (Data.ProtoLens.Tag 2, reason__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SpecificErrorRequest'_unknownFields
              (\ x__ y__ -> x__{_SpecificErrorRequest'_unknownFields = y__})
        defMessage
          = SpecificErrorRequest{_SpecificErrorRequest'code =
                                   Data.ProtoLens.fieldDefault,
                                 _SpecificErrorRequest'reason = Data.ProtoLens.fieldDefault,
                                 _SpecificErrorRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData SpecificErrorRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_SpecificErrorRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_SpecificErrorRequest'code x__)
                   (Control.DeepSeq.deepseq (_SpecificErrorRequest'reason x__) (())))
data GRPCBin = GRPCBin{}
                 deriving ()
instance Data.ProtoLens.Service.Types.Service GRPCBin where
        type ServiceName GRPCBin = "GRPCBin"
        type ServicePackage GRPCBin = "grpcbin"
        type ServiceMethods GRPCBin =
             '["dummyBidirectionalStreamStream", "dummyClientStream",
               "dummyServerStream", "dummyUnary", "empty", "headersUnary",
               "index", "noResponseUnary", "randomError", "specificError"]
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "index"
         where
        type MethodName GRPCBin "index" = "Index"
        type MethodInput GRPCBin "index" = EmptyMessage
        type MethodOutput GRPCBin "index" = IndexReply
        type MethodStreamingType GRPCBin "index" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin "empty"
         where
        type MethodName GRPCBin "empty" = "Empty"
        type MethodInput GRPCBin "empty" = EmptyMessage
        type MethodOutput GRPCBin "empty" = EmptyMessage
        type MethodStreamingType GRPCBin "empty" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "dummyUnary"
         where
        type MethodName GRPCBin "dummyUnary" = "DummyUnary"
        type MethodInput GRPCBin "dummyUnary" = DummyMessage
        type MethodOutput GRPCBin "dummyUnary" = DummyMessage
        type MethodStreamingType GRPCBin "dummyUnary" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "dummyServerStream"
         where
        type MethodName GRPCBin "dummyServerStream" = "DummyServerStream"
        type MethodInput GRPCBin "dummyServerStream" = DummyMessage
        type MethodOutput GRPCBin "dummyServerStream" = DummyMessage
        type MethodStreamingType GRPCBin "dummyServerStream" =
             'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "dummyClientStream"
         where
        type MethodName GRPCBin "dummyClientStream" = "DummyClientStream"
        type MethodInput GRPCBin "dummyClientStream" = DummyMessage
        type MethodOutput GRPCBin "dummyClientStream" = DummyMessage
        type MethodStreamingType GRPCBin "dummyClientStream" =
             'Data.ProtoLens.Service.Types.ClientStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "dummyBidirectionalStreamStream"
         where
        type MethodName GRPCBin "dummyBidirectionalStreamStream" =
             "DummyBidirectionalStreamStream"
        type MethodInput GRPCBin "dummyBidirectionalStreamStream" =
             DummyMessage
        type MethodOutput GRPCBin "dummyBidirectionalStreamStream" =
             DummyMessage
        type MethodStreamingType GRPCBin "dummyBidirectionalStreamStream" =
             'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "specificError"
         where
        type MethodName GRPCBin "specificError" = "SpecificError"
        type MethodInput GRPCBin "specificError" = SpecificErrorRequest
        type MethodOutput GRPCBin "specificError" = EmptyMessage
        type MethodStreamingType GRPCBin "specificError" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "randomError"
         where
        type MethodName GRPCBin "randomError" = "RandomError"
        type MethodInput GRPCBin "randomError" = EmptyMessage
        type MethodOutput GRPCBin "randomError" = EmptyMessage
        type MethodStreamingType GRPCBin "randomError" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "headersUnary"
         where
        type MethodName GRPCBin "headersUnary" = "HeadersUnary"
        type MethodInput GRPCBin "headersUnary" = EmptyMessage
        type MethodOutput GRPCBin "headersUnary" = HeadersMessage
        type MethodStreamingType GRPCBin "headersUnary" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl GRPCBin
           "noResponseUnary"
         where
        type MethodName GRPCBin "noResponseUnary" = "NoResponseUnary"
        type MethodInput GRPCBin "noResponseUnary" = EmptyMessage
        type MethodOutput GRPCBin "noResponseUnary" = EmptyMessage
        type MethodStreamingType GRPCBin "noResponseUnary" =
             'Data.ProtoLens.Service.Types.NonStreaming
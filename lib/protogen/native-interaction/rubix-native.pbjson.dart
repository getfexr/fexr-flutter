///
//  Generated code. Do not modify.
//  source: native-interaction/rubix-native.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createDIDReqDescriptor instead')
const CreateDIDReq$json = const {
  '1': 'CreateDIDReq',
  '2': const [
    const {'1': 'didImage', '3': 1, '4': 1, '5': 9, '10': 'didImage'},
    const {'1': 'publicShare', '3': 2, '4': 1, '5': 9, '10': 'publicShare'},
    const {'1': 'privateKeyPass', '3': 3, '4': 1, '5': 9, '10': 'privateKeyPass'},
  ],
};

/// Descriptor for `CreateDIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDIDReqDescriptor = $convert.base64Decode('CgxDcmVhdGVESURSZXESGgoIZGlkSW1hZ2UYASABKAlSCGRpZEltYWdlEiAKC3B1YmxpY1NoYXJlGAIgASgJUgtwdWJsaWNTaGFyZRImCg5wcml2YXRlS2V5UGFzcxgDIAEoCVIOcHJpdmF0ZUtleVBhc3M=');
@$core.Deprecated('Use createDIDResDescriptor instead')
const CreateDIDRes$json = const {
  '1': 'CreateDIDRes',
  '2': const [
    const {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
    const {'1': 'walletId', '3': 2, '4': 1, '5': 9, '10': 'walletId'},
  ],
};

/// Descriptor for `CreateDIDRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDIDResDescriptor = $convert.base64Decode('CgxDcmVhdGVESURSZXMSEAoDZGlkGAEgASgJUgNkaWQSGgoId2FsbGV0SWQYAiABKAlSCHdhbGxldElk');
@$core.Deprecated('Use requestTransactionPayloadReqDescriptor instead')
const RequestTransactionPayloadReq$json = const {
  '1': 'RequestTransactionPayloadReq',
  '2': const [
    const {'1': 'receiver', '3': 1, '4': 1, '5': 9, '10': 'receiver'},
    const {'1': 'tokenCount', '3': 2, '4': 1, '5': 1, '10': 'tokenCount'},
    const {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'type', '3': 4, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'privateKeyPass', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'privateKeyPass', '17': true},
  ],
  '8': const [
    const {'1': '_privateKeyPass'},
  ],
};

/// Descriptor for `RequestTransactionPayloadReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadReqDescriptor = $convert.base64Decode('ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVxEhoKCHJlY2VpdmVyGAEgASgJUghyZWNlaXZlchIeCgp0b2tlbkNvdW50GAIgASgBUgp0b2tlbkNvdW50EhgKB2NvbW1lbnQYAyABKAlSB2NvbW1lbnQSEgoEdHlwZRgEIAEoBVIEdHlwZRIrCg5wcml2YXRlS2V5UGFzcxgFIAEoCUgAUg5wcml2YXRlS2V5UGFzc4gBAUIRCg9fcHJpdmF0ZUtleVBhc3M=');
@$core.Deprecated('Use txnSummaryDescriptor instead')
const TxnSummary$json = const {
  '1': 'TxnSummary',
  '2': const [
    const {'1': 'txnId', '3': 1, '4': 1, '5': 9, '10': 'txnId'},
    const {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    const {'1': 'receiver', '3': 3, '4': 1, '5': 9, '10': 'receiver'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `TxnSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnSummaryDescriptor = $convert.base64Decode('CgpUeG5TdW1tYXJ5EhQKBXR4bklkGAEgASgJUgV0eG5JZBIWCgZzZW5kZXIYAiABKAlSBnNlbmRlchIaCghyZWNlaXZlchgDIAEoCVIIcmVjZWl2ZXISFgoGYW1vdW50GAQgASgBUgZhbW91bnQSGAoHY29tbWVudBgFIAEoCVIHY29tbWVudA==');
@$core.Deprecated('Use transactionLastObjectDescriptor instead')
const TransactionLastObject$json = const {
  '1': 'TransactionLastObject',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `TransactionLastObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionLastObjectDescriptor = $convert.base64Decode('ChVUcmFuc2FjdGlvbkxhc3RPYmplY3QSEgoEaGFzaBgBIAEoCVIEaGFzaBIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use transactionLastObjectSignedDescriptor instead')
const TransactionLastObjectSigned$json = const {
  '1': 'TransactionLastObjectSigned',
  '2': const [
    const {'1': 'chainSign', '3': 1, '4': 1, '5': 9, '10': 'chainSign'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
    const {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `TransactionLastObjectSigned`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionLastObjectSignedDescriptor = $convert.base64Decode('ChtUcmFuc2FjdGlvbkxhc3RPYmplY3RTaWduZWQSHAoJY2hhaW5TaWduGAEgASgJUgljaGFpblNpZ24SEgoEaGFzaBgCIAEoCVIEaGFzaBIUCgV0b2tlbhgDIAEoCVIFdG9rZW4=');
@$core.Deprecated('Use requestTransactionPayloadResDescriptor instead')
const RequestTransactionPayloadRes$json = const {
  '1': 'RequestTransactionPayloadRes',
  '2': const [
    const {'1': 'authSenderByRecHash', '3': 1, '4': 1, '5': 9, '10': 'authSenderByRecHash'},
    const {'1': 'lastObject', '3': 2, '4': 3, '5': 11, '6': '.protos.TransactionLastObject', '10': 'lastObject'},
    const {'1': 'senderPayloadSign', '3': 3, '4': 1, '5': 9, '10': 'senderPayloadSign'},
  ],
};

/// Descriptor for `RequestTransactionPayloadRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadResDescriptor = $convert.base64Decode('ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVzEjAKE2F1dGhTZW5kZXJCeVJlY0hhc2gYASABKAlSE2F1dGhTZW5kZXJCeVJlY0hhc2gSPQoKbGFzdE9iamVjdBgCIAMoCzIdLnByb3Rvcy5UcmFuc2FjdGlvbkxhc3RPYmplY3RSCmxhc3RPYmplY3QSLAoRc2VuZGVyUGF5bG9hZFNpZ24YAyABKAlSEXNlbmRlclBheWxvYWRTaWdu');
@$core.Deprecated('Use finaliseTransactionPayloadDescriptor instead')
const FinaliseTransactionPayload$json = const {
  '1': 'FinaliseTransactionPayload',
  '2': const [
    const {'1': 'authSenderByRecHash', '3': 1, '4': 1, '5': 9, '10': 'authSenderByRecHash'},
    const {'1': 'lastObject', '3': 2, '4': 3, '5': 11, '6': '.protos.TransactionLastObjectSigned', '10': 'lastObject'},
    const {'1': 'senderPayloadSign', '3': 3, '4': 1, '5': 9, '10': 'senderPayloadSign'},
    const {'1': 'privateKeyPass', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'privateKeyPass', '17': true},
  ],
  '8': const [
    const {'1': '_privateKeyPass'},
  ],
};

/// Descriptor for `FinaliseTransactionPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finaliseTransactionPayloadDescriptor = $convert.base64Decode('ChpGaW5hbGlzZVRyYW5zYWN0aW9uUGF5bG9hZBIwChNhdXRoU2VuZGVyQnlSZWNIYXNoGAEgASgJUhNhdXRoU2VuZGVyQnlSZWNIYXNoEkMKCmxhc3RPYmplY3QYAiADKAsyIy5wcm90b3MuVHJhbnNhY3Rpb25MYXN0T2JqZWN0U2lnbmVkUgpsYXN0T2JqZWN0EiwKEXNlbmRlclBheWxvYWRTaWduGAMgASgJUhFzZW5kZXJQYXlsb2FkU2lnbhIrCg5wcml2YXRlS2V5UGFzcxgEIAEoCUgAUg5wcml2YXRlS2V5UGFzc4gBAUIRCg9fcHJpdmF0ZUtleVBhc3M=');
@$core.Deprecated('Use signedContentDescriptor instead')
const SignedContent$json = const {
  '1': 'SignedContent',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SignedContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedContentDescriptor = $convert.base64Decode('Cg1TaWduZWRDb250ZW50EhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQSHAoJc2lnbmF0dXJlGAIgASgJUglzaWduYXR1cmU=');
@$core.Deprecated('Use initiateTransactionReqDescriptor instead')
const InitiateTransactionReq$json = const {
  '1': 'InitiateTransactionReq',
  '2': const [
    const {'1': 'receiver', '3': 1, '4': 1, '5': 9, '10': 'receiver'},
    const {'1': 'tokenCount', '3': 2, '4': 1, '5': 1, '10': 'tokenCount'},
    const {'1': 'type', '3': 3, '4': 1, '5': 5, '10': 'type'},
    const {'1': 'payloadSigned', '3': 4, '4': 1, '5': 11, '6': '.protos.InitiateTransactionReq.SignedTransactionPayload', '10': 'payloadSigned'},
  ],
  '3': const [InitiateTransactionReq_SignedTransactionPayload$json],
};

@$core.Deprecated('Use initiateTransactionReqDescriptor instead')
const InitiateTransactionReq_SignedTransactionPayload$json = const {
  '1': 'SignedTransactionPayload',
  '2': const [
    const {'1': 'positions', '3': 1, '4': 1, '5': 9, '10': 'positions'},
    const {'1': 'senderSign', '3': 2, '4': 1, '5': 11, '6': '.protos.SignedContent', '10': 'senderSign'},
    const {'1': 'senderSignQ', '3': 3, '4': 1, '5': 11, '6': '.protos.SignedContent', '10': 'senderSignQ'},
    const {'1': 'txnDetails', '3': 4, '4': 1, '5': 9, '10': 'txnDetails'},
  ],
};

/// Descriptor for `InitiateTransactionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateTransactionReqDescriptor = $convert.base64Decode('ChZJbml0aWF0ZVRyYW5zYWN0aW9uUmVxEhoKCHJlY2VpdmVyGAEgASgJUghyZWNlaXZlchIeCgp0b2tlbkNvdW50GAIgASgBUgp0b2tlbkNvdW50EhIKBHR5cGUYAyABKAVSBHR5cGUSXQoNcGF5bG9hZFNpZ25lZBgEIAEoCzI3LnByb3Rvcy5Jbml0aWF0ZVRyYW5zYWN0aW9uUmVxLlNpZ25lZFRyYW5zYWN0aW9uUGF5bG9hZFINcGF5bG9hZFNpZ25lZBrIAQoYU2lnbmVkVHJhbnNhY3Rpb25QYXlsb2FkEhwKCXBvc2l0aW9ucxgBIAEoCVIJcG9zaXRpb25zEjUKCnNlbmRlclNpZ24YAiABKAsyFS5wcm90b3MuU2lnbmVkQ29udGVudFIKc2VuZGVyU2lnbhI3CgtzZW5kZXJTaWduURgDIAEoCzIVLnByb3Rvcy5TaWduZWRDb250ZW50UgtzZW5kZXJTaWduURIeCgp0eG5EZXRhaWxzGAQgASgJUgp0eG5EZXRhaWxz');
@$core.Deprecated('Use getTransactionLogReqDescriptor instead')
const GetTransactionLogReq$json = const {
  '1': 'GetTransactionLogReq',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 13, '10': 'count'},
  ],
};

/// Descriptor for `GetTransactionLogReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionLogReqDescriptor = $convert.base64Decode('ChRHZXRUcmFuc2FjdGlvbkxvZ1JlcRIUCgVjb3VudBgBIAEoDVIFY291bnQ=');
@$core.Deprecated('Use getTransactionLogResDescriptor instead')
const GetTransactionLogRes$json = const {
  '1': 'GetTransactionLogRes',
  '2': const [
    const {'1': 'txnLog', '3': 1, '4': 3, '5': 11, '6': '.protos.TxnSummary', '10': 'txnLog'},
  ],
};

/// Descriptor for `GetTransactionLogRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionLogResDescriptor = $convert.base64Decode('ChRHZXRUcmFuc2FjdGlvbkxvZ1JlcxIqCgZ0eG5Mb2cYASADKAsyEi5wcm90b3MuVHhuU3VtbWFyeVIGdHhuTG9n');
@$core.Deprecated('Use getBalanceResDescriptor instead')
const GetBalanceRes$json = const {
  '1': 'GetBalanceRes',
  '2': const [
    const {'1': 'balance', '3': 1, '4': 1, '5': 1, '10': 'balance'},
  ],
};

/// Descriptor for `GetBalanceRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceResDescriptor = $convert.base64Decode('Cg1HZXRCYWxhbmNlUmVzEhgKB2JhbGFuY2UYASABKAFSB2JhbGFuY2U=');

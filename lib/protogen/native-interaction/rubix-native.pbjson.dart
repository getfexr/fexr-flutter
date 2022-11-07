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
  ],
};

/// Descriptor for `CreateDIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDIDReqDescriptor = $convert.base64Decode('CgxDcmVhdGVESURSZXESGgoIZGlkSW1hZ2UYASABKAlSCGRpZEltYWdlEiAKC3B1YmxpY1NoYXJlGAIgASgJUgtwdWJsaWNTaGFyZQ==');
@$core.Deprecated('Use createDIDResDescriptor instead')
const CreateDIDRes$json = const {
  '1': 'CreateDIDRes',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `CreateDIDRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDIDResDescriptor = $convert.base64Decode('CgxDcmVhdGVESURSZXMSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use requestTransactionPayloadReqDescriptor instead')
const RequestTransactionPayloadReq$json = const {
  '1': 'RequestTransactionPayloadReq',
  '2': const [
    const {'1': 'receiver', '3': 1, '4': 1, '5': 9, '10': 'receiver'},
    const {'1': 'tokenCount', '3': 2, '4': 1, '5': 5, '10': 'tokenCount'},
    const {'1': 'comment', '3': 3, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'type', '3': 4, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `RequestTransactionPayloadReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadReqDescriptor = $convert.base64Decode('ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVxEhoKCHJlY2VpdmVyGAEgASgJUghyZWNlaXZlchIeCgp0b2tlbkNvdW50GAIgASgFUgp0b2tlbkNvdW50EhgKB2NvbW1lbnQYAyABKAlSB2NvbW1lbnQSEgoEdHlwZRgEIAEoBVIEdHlwZQ==');
@$core.Deprecated('Use txnDetailsDescriptor instead')
const TxnDetails$json = const {
  '1': 'TxnDetails',
  '2': const [
    const {'1': 'wholeTokens', '3': 1, '4': 1, '5': 9, '10': 'wholeTokens'},
    const {'1': 'wholeTokenChainHash', '3': 2, '4': 1, '5': 9, '10': 'wholeTokenChainHash'},
    const {'1': 'partTokenChainHash', '3': 3, '4': 1, '5': 9, '10': 'partTokenChainHash'},
    const {'1': 'partTokens', '3': 4, '4': 1, '5': 9, '10': 'partTokens'},
    const {'1': 'partTokenChainArrays', '3': 5, '4': 1, '5': 9, '10': 'partTokenChainArrays'},
    const {'1': 'amountLedger', '3': 6, '4': 1, '5': 9, '10': 'amountLedger'},
    const {'1': 'tokenPreviousSender', '3': 7, '4': 1, '5': 9, '10': 'tokenPreviousSender'},
    const {'1': 'doubleSpendString', '3': 8, '4': 1, '5': 9, '10': 'doubleSpendString'},
    const {'1': 'receiverDidIpfsHash', '3': 9, '4': 1, '5': 9, '10': 'receiverDidIpfsHash'},
    const {'1': 'requestedAmount', '3': 10, '4': 1, '5': 1, '10': 'requestedAmount'},
    const {'1': 'comment', '3': 11, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'tid', '3': 12, '4': 1, '5': 9, '10': 'tid'},
    const {'1': 'allTokens', '3': 13, '4': 1, '5': 9, '10': 'allTokens'},
    const {'1': 'newPart', '3': 14, '4': 1, '5': 8, '10': 'newPart'},
    const {'1': 'oldPart', '3': 15, '4': 1, '5': 8, '10': 'oldPart'},
  ],
};

/// Descriptor for `TxnDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnDetailsDescriptor = $convert.base64Decode('CgpUeG5EZXRhaWxzEiAKC3dob2xlVG9rZW5zGAEgASgJUgt3aG9sZVRva2VucxIwChN3aG9sZVRva2VuQ2hhaW5IYXNoGAIgASgJUhN3aG9sZVRva2VuQ2hhaW5IYXNoEi4KEnBhcnRUb2tlbkNoYWluSGFzaBgDIAEoCVIScGFydFRva2VuQ2hhaW5IYXNoEh4KCnBhcnRUb2tlbnMYBCABKAlSCnBhcnRUb2tlbnMSMgoUcGFydFRva2VuQ2hhaW5BcnJheXMYBSABKAlSFHBhcnRUb2tlbkNoYWluQXJyYXlzEiIKDGFtb3VudExlZGdlchgGIAEoCVIMYW1vdW50TGVkZ2VyEjAKE3Rva2VuUHJldmlvdXNTZW5kZXIYByABKAlSE3Rva2VuUHJldmlvdXNTZW5kZXISLAoRZG91YmxlU3BlbmRTdHJpbmcYCCABKAlSEWRvdWJsZVNwZW5kU3RyaW5nEjAKE3JlY2VpdmVyRGlkSXBmc0hhc2gYCSABKAlSE3JlY2VpdmVyRGlkSXBmc0hhc2gSKAoPcmVxdWVzdGVkQW1vdW50GAogASgBUg9yZXF1ZXN0ZWRBbW91bnQSGAoHY29tbWVudBgLIAEoCVIHY29tbWVudBIQCgN0aWQYDCABKAlSA3RpZBIcCglhbGxUb2tlbnMYDSABKAlSCWFsbFRva2VucxIYCgduZXdQYXJ0GA4gASgIUgduZXdQYXJ0EhgKB29sZFBhcnQYDyABKAhSB29sZFBhcnQ=');
@$core.Deprecated('Use requestTransactionPayloadResDescriptor instead')
const RequestTransactionPayloadRes$json = const {
  '1': 'RequestTransactionPayloadRes',
  '2': const [
    const {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
    const {'1': 'tid', '3': 2, '4': 1, '5': 9, '10': 'tid'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.protos.RequestTransactionPayloadRes.TxnSignPayload', '10': 'payload'},
  ],
  '3': const [RequestTransactionPayloadRes_TxnSignPayload$json],
};

@$core.Deprecated('Use requestTransactionPayloadResDescriptor instead')
const RequestTransactionPayloadRes_TxnSignPayload$json = const {
  '1': 'TxnSignPayload',
  '2': const [
    const {'1': 'senderSign', '3': 1, '4': 1, '5': 9, '10': 'senderSign'},
    const {'1': 'senderSignQ', '3': 2, '4': 1, '5': 9, '10': 'senderSignQ'},
    const {'1': 'txnDetails', '3': 3, '4': 1, '5': 11, '6': '.protos.TxnDetails', '10': 'txnDetails'},
  ],
};

/// Descriptor for `RequestTransactionPayloadRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadResDescriptor = $convert.base64Decode('ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVzEhAKA2RpZBgBIAEoCVIDZGlkEhAKA3RpZBgCIAEoCVIDdGlkEk0KB3BheWxvYWQYAyABKAsyMy5wcm90b3MuUmVxdWVzdFRyYW5zYWN0aW9uUGF5bG9hZFJlcy5UeG5TaWduUGF5bG9hZFIHcGF5bG9hZBqGAQoOVHhuU2lnblBheWxvYWQSHgoKc2VuZGVyU2lnbhgBIAEoCVIKc2VuZGVyU2lnbhIgCgtzZW5kZXJTaWduURgCIAEoCVILc2VuZGVyU2lnblESMgoKdHhuRGV0YWlscxgDIAEoCzISLnByb3Rvcy5UeG5EZXRhaWxzUgp0eG5EZXRhaWxz');
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
    const {'1': 'senderSign', '3': 2, '4': 1, '5': 11, '6': '.protos.InitiateTransactionReq.SignedTransactionPayload.SignedContent', '10': 'senderSign'},
    const {'1': 'senderSignQ', '3': 3, '4': 1, '5': 11, '6': '.protos.InitiateTransactionReq.SignedTransactionPayload.SignedContent', '10': 'senderSignQ'},
    const {'1': 'txnDetails', '3': 4, '4': 1, '5': 11, '6': '.protos.TxnDetails', '10': 'txnDetails'},
  ],
  '3': const [InitiateTransactionReq_SignedTransactionPayload_SignedContent$json],
};

@$core.Deprecated('Use initiateTransactionReqDescriptor instead')
const InitiateTransactionReq_SignedTransactionPayload_SignedContent$json = const {
  '1': 'SignedContent',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `InitiateTransactionReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateTransactionReqDescriptor = $convert.base64Decode('ChZJbml0aWF0ZVRyYW5zYWN0aW9uUmVxEhoKCHJlY2VpdmVyGAEgASgJUghyZWNlaXZlchIeCgp0b2tlbkNvdW50GAIgASgBUgp0b2tlbkNvdW50EhIKBHR5cGUYAyABKAVSBHR5cGUSXQoNcGF5bG9hZFNpZ25lZBgEIAEoCzI3LnByb3Rvcy5Jbml0aWF0ZVRyYW5zYWN0aW9uUmVxLlNpZ25lZFRyYW5zYWN0aW9uUGF5bG9hZFINcGF5bG9hZFNpZ25lZBqFAwoYU2lnbmVkVHJhbnNhY3Rpb25QYXlsb2FkEhwKCXBvc2l0aW9ucxgBIAEoCVIJcG9zaXRpb25zEmUKCnNlbmRlclNpZ24YAiABKAsyRS5wcm90b3MuSW5pdGlhdGVUcmFuc2FjdGlvblJlcS5TaWduZWRUcmFuc2FjdGlvblBheWxvYWQuU2lnbmVkQ29udGVudFIKc2VuZGVyU2lnbhJnCgtzZW5kZXJTaWduURgDIAEoCzJFLnByb3Rvcy5Jbml0aWF0ZVRyYW5zYWN0aW9uUmVxLlNpZ25lZFRyYW5zYWN0aW9uUGF5bG9hZC5TaWduZWRDb250ZW50UgtzZW5kZXJTaWduURIyCgp0eG5EZXRhaWxzGAQgASgLMhIucHJvdG9zLlR4bkRldGFpbHNSCnR4bkRldGFpbHMaRwoNU2lnbmVkQ29udGVudBIYCgdjb250ZW50GAEgASgJUgdjb250ZW50EhwKCXNpZ25hdHVyZRgCIAEoCVIJc2lnbmF0dXJl');
@$core.Deprecated('Use initiateTransactionResDescriptor instead')
const InitiateTransactionRes$json = const {
  '1': 'InitiateTransactionRes',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'transactionId', '3': 3, '4': 1, '5': 9, '10': 'transactionId'},
  ],
};

/// Descriptor for `InitiateTransactionRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initiateTransactionResDescriptor = $convert.base64Decode('ChZJbml0aWF0ZVRyYW5zYWN0aW9uUmVzEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIkCg10cmFuc2FjdGlvbklkGAMgASgJUg10cmFuc2FjdGlvbklk');

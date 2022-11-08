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
  ],
};

/// Descriptor for `RequestTransactionPayloadReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadReqDescriptor = $convert.base64Decode('ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVxEhoKCHJlY2VpdmVyGAEgASgJUghyZWNlaXZlchIeCgp0b2tlbkNvdW50GAIgASgBUgp0b2tlbkNvdW50EhgKB2NvbW1lbnQYAyABKAlSB2NvbW1lbnQSEgoEdHlwZRgEIAEoBVIEdHlwZQ==');
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
@$core.Deprecated('Use requestTransactionPayloadResDescriptor instead')
const RequestTransactionPayloadRes$json = const {
  '1': 'RequestTransactionPayloadRes',
  '2': const [
    const {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
    const {'1': 'tid', '3': 2, '4': 1, '5': 9, '10': 'tid'},
    const {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.protos.RequestTransactionPayloadRes.TxnSignPayload', '10': 'payload'},
    const {'1': 'txnSummary', '3': 4, '4': 1, '5': 11, '6': '.protos.TxnSummary', '10': 'txnSummary'},
  ],
  '3': const [RequestTransactionPayloadRes_TxnSignPayload$json],
};

@$core.Deprecated('Use requestTransactionPayloadResDescriptor instead')
const RequestTransactionPayloadRes_TxnSignPayload$json = const {
  '1': 'TxnSignPayload',
  '2': const [
    const {'1': 'senderSign', '3': 1, '4': 1, '5': 9, '10': 'senderSign'},
    const {'1': 'senderSignQ', '3': 2, '4': 1, '5': 9, '10': 'senderSignQ'},
    const {'1': 'txnDetails', '3': 3, '4': 1, '5': 9, '10': 'txnDetails'},
  ],
};

/// Descriptor for `RequestTransactionPayloadRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadResDescriptor = $convert.base64Decode('ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVzEhAKA2RpZBgBIAEoCVIDZGlkEhAKA3RpZBgCIAEoCVIDdGlkEk0KB3BheWxvYWQYAyABKAsyMy5wcm90b3MuUmVxdWVzdFRyYW5zYWN0aW9uUGF5bG9hZFJlcy5UeG5TaWduUGF5bG9hZFIHcGF5bG9hZBIyCgp0eG5TdW1tYXJ5GAQgASgLMhIucHJvdG9zLlR4blN1bW1hcnlSCnR4blN1bW1hcnkacgoOVHhuU2lnblBheWxvYWQSHgoKc2VuZGVyU2lnbhgBIAEoCVIKc2VuZGVyU2lnbhIgCgtzZW5kZXJTaWduURgCIAEoCVILc2VuZGVyU2lnblESHgoKdHhuRGV0YWlscxgDIAEoCVIKdHhuRGV0YWlscw==');
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

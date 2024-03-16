//
//  Generated code. Do not modify.
//  source: native-interaction/rubix-native.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use signedPayloadDescriptor instead')
const SignedPayload$json = {
  '1': 'SignedPayload',
  '2': [
    {'1': 'payload', '3': 1, '4': 1, '5': 9, '10': 'payload'},
    {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `SignedPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signedPayloadDescriptor = $convert.base64Decode(
    'Cg1TaWduZWRQYXlsb2FkEhgKB3BheWxvYWQYASABKAlSB3BheWxvYWQSHAoJc2lnbmF0dXJlGA'
    'IgASgMUglzaWduYXR1cmU=');

@$core.Deprecated('Use challengeReqDescriptor instead')
const ChallengeReq$json = {
  '1': 'ChallengeReq',
  '2': [
    {'1': 'publicKey', '3': 1, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `ChallengeReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List challengeReqDescriptor = $convert.base64Decode(
    'CgxDaGFsbGVuZ2VSZXESHAoJcHVibGljS2V5GAEgASgJUglwdWJsaWNLZXk=');

@$core.Deprecated('Use challengeStringDescriptor instead')
const ChallengeString$json = {
  '1': 'ChallengeString',
  '2': [
    {'1': 'challenge', '3': 1, '4': 1, '5': 9, '10': 'challenge'},
  ],
};

/// Descriptor for `ChallengeString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List challengeStringDescriptor = $convert.base64Decode(
    'Cg9DaGFsbGVuZ2VTdHJpbmcSHAoJY2hhbGxlbmdlGAEgASgJUgljaGFsbGVuZ2U=');

@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = {
  '1': 'Token',
  '2': [
    {'1': 'accessToken', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'expiry', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'expiry'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode(
    'CgVUb2tlbhIgCgthY2Nlc3NUb2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SMgoGZXhwaXJ5GAIgAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGZXhwaXJ5');

@$core.Deprecated('Use createDIDReqDescriptor instead')
const CreateDIDReq$json = {
  '1': 'CreateDIDReq',
  '2': [
    {'1': 'didImage', '3': 1, '4': 1, '5': 9, '10': 'didImage'},
    {'1': 'publicShare', '3': 2, '4': 1, '5': 9, '10': 'publicShare'},
    {'1': 'publicKey', '3': 3, '4': 1, '5': 9, '10': 'publicKey'},
    {'1': 'ecdsaChallengeResponse', '3': 4, '4': 1, '5': 11, '6': '.protos.SignedPayload', '10': 'ecdsaChallengeResponse'},
  ],
};

/// Descriptor for `CreateDIDReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDIDReqDescriptor = $convert.base64Decode(
    'CgxDcmVhdGVESURSZXESGgoIZGlkSW1hZ2UYASABKAlSCGRpZEltYWdlEiAKC3B1YmxpY1NoYX'
    'JlGAIgASgJUgtwdWJsaWNTaGFyZRIcCglwdWJsaWNLZXkYAyABKAlSCXB1YmxpY0tleRJNChZl'
    'Y2RzYUNoYWxsZW5nZVJlc3BvbnNlGAQgASgLMhUucHJvdG9zLlNpZ25lZFBheWxvYWRSFmVjZH'
    'NhQ2hhbGxlbmdlUmVzcG9uc2U=');

@$core.Deprecated('Use createDIDResDescriptor instead')
const CreateDIDRes$json = {
  '1': 'CreateDIDRes',
  '2': [
    {'1': 'did', '3': 1, '4': 1, '5': 9, '10': 'did'},
    {'1': 'status', '3': 2, '4': 1, '5': 8, '10': 'status'},
    {'1': 'accessToken', '3': 3, '4': 1, '5': 11, '6': '.protos.Token', '10': 'accessToken'},
  ],
};

/// Descriptor for `CreateDIDRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDIDResDescriptor = $convert.base64Decode(
    'CgxDcmVhdGVESURSZXMSEAoDZGlkGAEgASgJUgNkaWQSFgoGc3RhdHVzGAIgASgIUgZzdGF0dX'
    'MSLwoLYWNjZXNzVG9rZW4YAyABKAsyDS5wcm90b3MuVG9rZW5SC2FjY2Vzc1Rva2Vu');

@$core.Deprecated('Use requestTransactionPayloadReqDescriptor instead')
const RequestTransactionPayloadReq$json = {
  '1': 'RequestTransactionPayloadReq',
  '2': [
    {'1': 'receiver', '3': 1, '4': 1, '5': 9, '10': 'receiver'},
    {'1': 'tokenCount', '3': 3, '4': 1, '5': 1, '10': 'tokenCount'},
    {'1': 'comment', '3': 4, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'type', '3': 5, '4': 1, '5': 5, '10': 'type'},
  ],
};

/// Descriptor for `RequestTransactionPayloadReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadReqDescriptor = $convert.base64Decode(
    'ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVxEhoKCHJlY2VpdmVyGAEgASgJUghyZWNlaX'
    'ZlchIeCgp0b2tlbkNvdW50GAMgASgBUgp0b2tlbkNvdW50EhgKB2NvbW1lbnQYBCABKAlSB2Nv'
    'bW1lbnQSEgoEdHlwZRgFIAEoBVIEdHlwZQ==');

@$core.Deprecated('Use requestTransactionPayloadResDescriptor instead')
const RequestTransactionPayloadRes$json = {
  '1': 'RequestTransactionPayloadRes',
  '2': [
    {'1': 'requestId', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'hash', '3': 2, '4': 1, '5': 9, '10': 'hash'},
  ],
};

/// Descriptor for `RequestTransactionPayloadRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestTransactionPayloadResDescriptor = $convert.base64Decode(
    'ChxSZXF1ZXN0VHJhbnNhY3Rpb25QYXlsb2FkUmVzEhwKCXJlcXVlc3RJZBgBIAEoCVIJcmVxdW'
    'VzdElkEhIKBGhhc2gYAiABKAlSBGhhc2g=');

@$core.Deprecated('Use hashSignedDescriptor instead')
const HashSigned$json = {
  '1': 'HashSigned',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'pvtSign', '3': 2, '4': 1, '5': 12, '10': 'pvtSign'},
    {'1': 'imgSign', '3': 3, '4': 1, '5': 12, '10': 'imgSign'},
  ],
};

/// Descriptor for `HashSigned`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashSignedDescriptor = $convert.base64Decode(
    'CgpIYXNoU2lnbmVkEg4KAmlkGAEgASgJUgJpZBIYCgdwdnRTaWduGAIgASgMUgdwdnRTaWduEh'
    'gKB2ltZ1NpZ24YAyABKAxSB2ltZ1NpZ24=');

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSFgoGc3RhdHVzGAEgASgIUgZzdGF0dXMSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2'
    'FnZQ==');

@$core.Deprecated('Use generateReqDescriptor instead')
const GenerateReq$json = {
  '1': 'GenerateReq',
  '2': [
    {'1': 'tokenCount', '3': 1, '4': 1, '5': 1, '10': 'tokenCount'},
    {'1': 'did', '3': 2, '4': 1, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `GenerateReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateReqDescriptor = $convert.base64Decode(
    'CgtHZW5lcmF0ZVJlcRIeCgp0b2tlbkNvdW50GAEgASgBUgp0b2tlbkNvdW50EhAKA2RpZBgCIA'
    'EoCVIDZGlk');

@$core.Deprecated('Use getBalanceResDescriptor instead')
const GetBalanceRes$json = {
  '1': 'GetBalanceRes',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 1, '10': 'balance'},
  ],
};

/// Descriptor for `GetBalanceRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBalanceResDescriptor = $convert.base64Decode(
    'Cg1HZXRCYWxhbmNlUmVzEhgKB2JhbGFuY2UYASABKAFSB2JhbGFuY2U=');

@$core.Deprecated('Use incomingTxnDetailsDescriptor instead')
const IncomingTxnDetails$json = {
  '1': 'IncomingTxnDetails',
  '2': [
    {'1': 'txnId', '3': 1, '4': 1, '5': 9, '10': 'txnId'},
    {'1': 'sender', '3': 2, '4': 1, '5': 9, '10': 'sender'},
    {'1': 'receiver', '3': 3, '4': 1, '5': 9, '10': 'receiver'},
    {'1': 'amount', '3': 4, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'comment', '3': 5, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'type', '3': 6, '4': 1, '5': 5, '10': 'type'},
    {'1': 'timestamp', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    {'1': 'tickerName', '3': 8, '4': 1, '5': 9, '10': 'tickerName'},
    {'1': 'gas', '3': 9, '4': 1, '5': 1, '10': 'gas'},
  ],
};

/// Descriptor for `IncomingTxnDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List incomingTxnDetailsDescriptor = $convert.base64Decode(
    'ChJJbmNvbWluZ1R4bkRldGFpbHMSFAoFdHhuSWQYASABKAlSBXR4bklkEhYKBnNlbmRlchgCIA'
    'EoCVIGc2VuZGVyEhoKCHJlY2VpdmVyGAMgASgJUghyZWNlaXZlchIWCgZhbW91bnQYBCABKAFS'
    'BmFtb3VudBIYCgdjb21tZW50GAUgASgJUgdjb21tZW50EhIKBHR5cGUYBiABKAVSBHR5cGUSOA'
    'oJdGltZXN0YW1wGAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1w'
    'Eh4KCnRpY2tlck5hbWUYCCABKAlSCnRpY2tlck5hbWUSEAoDZ2FzGAkgASgBUgNnYXM=');

@$core.Deprecated('Use transactionDetailsDescriptor instead')
const TransactionDetails$json = {
  '1': 'TransactionDetails',
  '2': [
    {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'transactionType', '3': 2, '4': 1, '5': 9, '10': 'transactionType'},
    {'1': 'blockId', '3': 3, '4': 1, '5': 9, '10': 'blockId'},
    {'1': 'mode', '3': 4, '4': 1, '5': 5, '10': 'mode'},
    {'1': 'senderDID', '3': 5, '4': 1, '5': 9, '10': 'senderDID'},
    {'1': 'receiverDID', '3': 6, '4': 1, '5': 9, '10': 'receiverDID'},
    {'1': 'amount', '3': 7, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'totalTime', '3': 8, '4': 1, '5': 1, '10': 'totalTime'},
    {'1': 'comment', '3': 9, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'dateTime', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
    {'1': 'status', '3': 11, '4': 1, '5': 8, '10': 'status'},
  ],
};

/// Descriptor for `TransactionDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDetailsDescriptor = $convert.base64Decode(
    'ChJUcmFuc2FjdGlvbkRldGFpbHMSJAoNdHJhbnNhY3Rpb25JZBgBIAEoCVINdHJhbnNhY3Rpb2'
    '5JZBIoCg90cmFuc2FjdGlvblR5cGUYAiABKAlSD3RyYW5zYWN0aW9uVHlwZRIYCgdibG9ja0lk'
    'GAMgASgJUgdibG9ja0lkEhIKBG1vZGUYBCABKAVSBG1vZGUSHAoJc2VuZGVyRElEGAUgASgJUg'
    'lzZW5kZXJESUQSIAoLcmVjZWl2ZXJESUQYBiABKAlSC3JlY2VpdmVyRElEEhYKBmFtb3VudBgH'
    'IAEoAVIGYW1vdW50EhwKCXRvdGFsVGltZRgIIAEoAVIJdG90YWxUaW1lEhgKB2NvbW1lbnQYCS'
    'ABKAlSB2NvbW1lbnQSNgoIZGF0ZVRpbWUYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0'
    'YW1wUghkYXRlVGltZRIWCgZzdGF0dXMYCyABKAhSBnN0YXR1cw==');

@$core.Deprecated('Use transactionHistoryDescriptor instead')
const TransactionHistory$json = {
  '1': 'TransactionHistory',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.protos.TransactionDetails', '10': 'transactions'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TransactionHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionHistoryDescriptor = $convert.base64Decode(
    'ChJUcmFuc2FjdGlvbkhpc3RvcnkSPgoMdHJhbnNhY3Rpb25zGAEgAygLMhoucHJvdG9zLlRyYW'
    '5zYWN0aW9uRGV0YWlsc1IMdHJhbnNhY3Rpb25zEhQKBWVycm9yGAIgASgJUgVlcnJvcg==');

@$core.Deprecated('Use onChainAssetDescriptor instead')
const OnChainAsset$json = {
  '1': 'OnChainAsset',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 9, '10': 'timestamp'},
    {'1': 'assetName', '3': 2, '4': 1, '5': 9, '10': 'assetName'},
    {'1': 'creatorName', '3': 3, '4': 1, '5': 9, '10': 'creatorName'},
    {'1': 'creatorDID', '3': 4, '4': 1, '5': 9, '10': 'creatorDID'},
    {'1': 'price', '3': 5, '4': 1, '5': 9, '10': 'price'},
    {'1': 'note', '3': 6, '4': 1, '5': 9, '10': 'note'},
    {'1': 'status', '3': 7, '4': 1, '5': 9, '10': 'status'},
    {'1': 'hash', '3': 8, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'chain', '3': 9, '4': 1, '5': 9, '10': 'chain'},
    {'1': 'url', '3': 10, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `OnChainAsset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onChainAssetDescriptor = $convert.base64Decode(
    'CgxPbkNoYWluQXNzZXQSHAoJdGltZXN0YW1wGAEgASgJUgl0aW1lc3RhbXASHAoJYXNzZXROYW'
    '1lGAIgASgJUglhc3NldE5hbWUSIAoLY3JlYXRvck5hbWUYAyABKAlSC2NyZWF0b3JOYW1lEh4K'
    'CmNyZWF0b3JESUQYBCABKAlSCmNyZWF0b3JESUQSFAoFcHJpY2UYBSABKAlSBXByaWNlEhIKBG'
    '5vdGUYBiABKAlSBG5vdGUSFgoGc3RhdHVzGAcgASgJUgZzdGF0dXMSEgoEaGFzaBgIIAEoCVIE'
    'aGFzaBIUCgVjaGFpbhgJIAEoCVIFY2hhaW4SEAoDdXJsGAogASgJUgN1cmw=');

@$core.Deprecated('Use assetsDescriptor instead')
const Assets$json = {
  '1': 'Assets',
  '2': [
    {'1': 'assets', '3': 1, '4': 3, '5': 11, '6': '.protos.OnChainAsset', '10': 'assets'},
  ],
};

/// Descriptor for `Assets`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetsDescriptor = $convert.base64Decode(
    'CgZBc3NldHMSLAoGYXNzZXRzGAEgAygLMhQucHJvdG9zLk9uQ2hhaW5Bc3NldFIGYXNzZXRz');


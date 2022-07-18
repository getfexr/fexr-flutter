///
//  Generated code. Do not modify.
//  source: sync-v1/protos/pop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rubixWalletDataDescriptor instead')
const rubixWalletData$json = const {
  '1': 'rubixWalletData',
  '2': const [
    const {'1': 'DIDShare', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'DIDShare', '17': true},
    const {'1': 'PublicShare', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'PublicShare', '17': true},
    const {'1': 'PrivateShare', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'PrivateShare', '17': true},
    const {'1': 'balance', '3': 5, '4': 1, '5': 1, '9': 3, '10': 'balance', '17': true},
    const {'1': 'th', '3': 6, '4': 3, '5': 11, '6': '.protos.TransactionHistory', '10': 'th'},
    const {'1': 'qst', '3': 7, '4': 3, '5': 11, '6': '.protos.QuorumSignedTransaction', '10': 'qst'},
    const {'1': 'tc', '3': 8, '4': 3, '5': 11, '6': '.protos.TokenChain', '10': 'tc'},
  ],
  '8': const [
    const {'1': '_DIDShare'},
    const {'1': '_PublicShare'},
    const {'1': '_PrivateShare'},
    const {'1': '_balance'},
  ],
};

/// Descriptor for `rubixWalletData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rubixWalletDataDescriptor = $convert.base64Decode('Cg9ydWJpeFdhbGxldERhdGESHwoIRElEU2hhcmUYASABKAlIAFIIRElEU2hhcmWIAQESJQoLUHVibGljU2hhcmUYAiABKAlIAVILUHVibGljU2hhcmWIAQESJwoMUHJpdmF0ZVNoYXJlGAMgASgJSAJSDFByaXZhdGVTaGFyZYgBARIdCgdiYWxhbmNlGAUgASgBSANSB2JhbGFuY2WIAQESKgoCdGgYBiADKAsyGi5wcm90b3MuVHJhbnNhY3Rpb25IaXN0b3J5UgJ0aBIxCgNxc3QYByADKAsyHy5wcm90b3MuUXVvcnVtU2lnbmVkVHJhbnNhY3Rpb25SA3FzdBIiCgJ0YxgIIAMoCzISLnByb3Rvcy5Ub2tlbkNoYWluUgJ0Y0ILCglfRElEU2hhcmVCDgoMX1B1YmxpY1NoYXJlQg8KDV9Qcml2YXRlU2hhcmVCCgoIX2JhbGFuY2U=');
@$core.Deprecated('Use tokenChainDescriptor instead')
const TokenChain$json = const {
  '1': 'TokenChain',
  '2': const [
    const {'1': 'tokenHash', '3': 1, '4': 1, '5': 9, '10': 'tokenHash'},
    const {'1': 'tokenContent', '3': 2, '4': 1, '5': 9, '10': 'tokenContent'},
    const {'1': 'chainData', '3': 3, '4': 1, '5': 9, '10': 'chainData'},
    const {'1': 'holding', '3': 4, '4': 1, '5': 8, '10': 'holding'},
  ],
};

/// Descriptor for `TokenChain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenChainDescriptor = $convert.base64Decode('CgpUb2tlbkNoYWluEhwKCXRva2VuSGFzaBgBIAEoCVIJdG9rZW5IYXNoEiIKDHRva2VuQ29udGVudBgCIAEoCVIMdG9rZW5Db250ZW50EhwKCWNoYWluRGF0YRgDIAEoCVIJY2hhaW5EYXRhEhgKB2hvbGRpbmcYBCABKAhSB2hvbGRpbmc=');
@$core.Deprecated('Use quorumSignedTransactionDescriptor instead')
const QuorumSignedTransaction$json = const {
  '1': 'QuorumSignedTransaction',
  '2': const [
    const {'1': 'senderDID', '3': 1, '4': 1, '5': 9, '10': 'senderDID'},
    const {'1': 'credits', '3': 2, '4': 1, '5': 9, '10': 'credits'},
    const {'1': 'sign', '3': 3, '4': 1, '5': 9, '10': 'sign'},
    const {'1': 'tid', '3': 4, '4': 1, '5': 9, '10': 'tid'},
    const {'1': 'minestatus', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'minestatus', '17': true},
    const {'1': 'consensusID', '3': 6, '4': 1, '5': 9, '9': 1, '10': 'consensusID', '17': true},
  ],
  '8': const [
    const {'1': '_minestatus'},
    const {'1': '_consensusID'},
  ],
};

/// Descriptor for `QuorumSignedTransaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quorumSignedTransactionDescriptor = $convert.base64Decode('ChdRdW9ydW1TaWduZWRUcmFuc2FjdGlvbhIcCglzZW5kZXJESUQYASABKAlSCXNlbmRlckRJRBIYCgdjcmVkaXRzGAIgASgJUgdjcmVkaXRzEhIKBHNpZ24YAyABKAlSBHNpZ24SEAoDdGlkGAQgASgJUgN0aWQSIwoKbWluZXN0YXR1cxgFIAEoCEgAUgptaW5lc3RhdHVziAEBEiUKC2NvbnNlbnN1c0lEGAYgASgJSAFSC2NvbnNlbnN1c0lEiAEBQg0KC19taW5lc3RhdHVzQg4KDF9jb25zZW5zdXNJRA==');
@$core.Deprecated('Use transactionHistoryDescriptor instead')
const TransactionHistory$json = const {
  '1': 'TransactionHistory',
  '2': const [
    const {'1': 'txn', '3': 1, '4': 1, '5': 9, '10': 'txn'},
    const {'1': 'senderDID', '3': 2, '4': 1, '5': 9, '10': 'senderDID'},
    const {'1': 'receiverDID', '3': 3, '4': 1, '5': 9, '10': 'receiverDID'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'date', '3': 5, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'role', '3': 6, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'totalTime', '3': 7, '4': 1, '5': 9, '10': 'totalTime'},
    const {'1': 'comment', '3': 8, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'status', '3': 9, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'quorumList', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'quorumList', '17': true},
  ],
  '8': const [
    const {'1': '_quorumList'},
  ],
};

/// Descriptor for `TransactionHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionHistoryDescriptor = $convert.base64Decode('ChJUcmFuc2FjdGlvbkhpc3RvcnkSEAoDdHhuGAEgASgJUgN0eG4SHAoJc2VuZGVyRElEGAIgASgJUglzZW5kZXJESUQSIAoLcmVjZWl2ZXJESUQYAyABKAlSC3JlY2VpdmVyRElEEhYKBmFtb3VudBgEIAEoCVIGYW1vdW50EhIKBGRhdGUYBSABKAlSBGRhdGUSEgoEcm9sZRgGIAEoCVIEcm9sZRIcCgl0b3RhbFRpbWUYByABKAlSCXRvdGFsVGltZRIYCgdjb21tZW50GAggASgJUgdjb21tZW50EhYKBnN0YXR1cxgJIAEoCVIGc3RhdHVzEiMKCnF1b3J1bUxpc3QYCiABKAlIAFIKcXVvcnVtTGlzdIgBAUINCgtfcXVvcnVtTGlzdA==');
@$core.Deprecated('Use web3WalletPermissionDescriptor instead')
const web3WalletPermission$json = const {
  '1': 'web3WalletPermission',
  '2': const [
    const {'1': 'DID', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'DID', '17': true},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'peerID', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'peerID', '17': true},
  ],
  '8': const [
    const {'1': '_DID'},
    const {'1': '_peerID'},
  ],
};

/// Descriptor for `web3WalletPermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List web3WalletPermissionDescriptor = $convert.base64Decode('ChR3ZWIzV2FsbGV0UGVybWlzc2lvbhIVCgNESUQYASABKAlIAFIDRElEiAEBEhIKBGNvZGUYAiABKAVSBGNvZGUSGwoGcGVlcklEGAMgASgJSAFSBnBlZXJJRIgBAUIGCgRfRElEQgkKB19wZWVySUQ=');
@$core.Deprecated('Use p2pConnectionStatusDescriptor instead')
const p2pConnectionStatus$json = const {
  '1': 'p2pConnectionStatus',
  '2': const [
    const {'1': 'connected', '3': 1, '4': 1, '5': 8, '10': 'connected'},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'message', '17': true},
  ],
  '8': const [
    const {'1': '_message'},
  ],
};

/// Descriptor for `p2pConnectionStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List p2pConnectionStatusDescriptor = $convert.base64Decode('ChNwMnBDb25uZWN0aW9uU3RhdHVzEhwKCWNvbm5lY3RlZBgBIAEoCFIJY29ubmVjdGVkEhIKBGNvZGUYAiABKAVSBGNvZGUSHQoHbWVzc2FnZRgDIAEoCUgAUgdtZXNzYWdliAEBQgoKCF9tZXNzYWdl');
@$core.Deprecated('Use txnPayloadDescriptor instead')
const txnPayload$json = const {
  '1': 'txnPayload',
  '2': const [
    const {'1': 'senderDID', '3': 1, '4': 1, '5': 9, '10': 'senderDID'},
    const {'1': 'receiverDID', '3': 2, '4': 1, '5': 9, '10': 'receiverDID'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'comment', '3': 4, '4': 1, '5': 9, '10': 'comment'},
    const {'1': 'quorumList', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'quorumList', '17': true},
  ],
  '8': const [
    const {'1': '_quorumList'},
  ],
};

/// Descriptor for `txnPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnPayloadDescriptor = $convert.base64Decode('Cgp0eG5QYXlsb2FkEhwKCXNlbmRlckRJRBgBIAEoCVIJc2VuZGVyRElEEiAKC3JlY2VpdmVyRElEGAIgASgJUgtyZWNlaXZlckRJRBIWCgZhbW91bnQYAyABKAlSBmFtb3VudBIYCgdjb21tZW50GAQgASgJUgdjb21tZW50EiMKCnF1b3J1bUxpc3QYBSABKAlIAFIKcXVvcnVtTGlzdIgBAUINCgtfcXVvcnVtTGlzdA==');
@$core.Deprecated('Use pushNotificationDescriptor instead')
const PushNotification$json = const {
  '1': 'PushNotification',
  '2': const [
    const {'1': 'notification', '3': 1, '4': 1, '5': 14, '6': '.protos.PushNotification.NOTIFICATION_TYPE', '10': 'notification'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'message', '17': true},
    const {'1': 'txn', '3': 3, '4': 1, '5': 11, '6': '.protos.TransactionHistory', '9': 1, '10': 'txn', '17': true},
  ],
  '4': const [PushNotification_NOTIFICATION_TYPE$json],
  '8': const [
    const {'1': '_message'},
    const {'1': '_txn'},
  ],
};

@$core.Deprecated('Use pushNotificationDescriptor instead')
const PushNotification_NOTIFICATION_TYPE$json = const {
  '1': 'NOTIFICATION_TYPE',
  '2': const [
    const {'1': 'PAY', '2': 0},
    const {'1': 'SIGN', '2': 1},
    const {'1': 'REMINDER', '2': 2},
    const {'1': 'PROMOTION', '2': 3},
  ],
};

/// Descriptor for `PushNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushNotificationDescriptor = $convert.base64Decode('ChBQdXNoTm90aWZpY2F0aW9uEk4KDG5vdGlmaWNhdGlvbhgBIAEoDjIqLnByb3Rvcy5QdXNoTm90aWZpY2F0aW9uLk5PVElGSUNBVElPTl9UWVBFUgxub3RpZmljYXRpb24SHQoHbWVzc2FnZRgCIAEoCUgAUgdtZXNzYWdliAEBEjEKA3R4bhgDIAEoCzIaLnByb3Rvcy5UcmFuc2FjdGlvbkhpc3RvcnlIAVIDdHhuiAEBIkMKEU5PVElGSUNBVElPTl9UWVBFEgcKA1BBWRAAEggKBFNJR04QARIMCghSRU1JTkRFUhACEg0KCVBST01PVElPThADQgoKCF9tZXNzYWdlQgYKBF90eG4=');
@$core.Deprecated('Use txnStatusDescriptor instead')
const txnStatus$json = const {
  '1': 'txnStatus',
  '2': const [
    const {'1': 'tid', '3': 1, '4': 1, '5': 9, '10': 'tid'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.protos.txnStatus.TRANSACTION_STATUS', '10': 'status'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'message', '17': true},
  ],
  '4': const [txnStatus_TRANSACTION_STATUS$json],
  '8': const [
    const {'1': '_message'},
  ],
};

@$core.Deprecated('Use txnStatusDescriptor instead')
const txnStatus_TRANSACTION_STATUS$json = const {
  '1': 'TRANSACTION_STATUS',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'FAILED', '2': 1},
    const {'1': 'VALIDATING', '2': 2},
    const {'1': 'CANCELED', '2': 3},
  ],
};

/// Descriptor for `txnStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txnStatusDescriptor = $convert.base64Decode('Cgl0eG5TdGF0dXMSEAoDdGlkGAEgASgJUgN0aWQSPAoGc3RhdHVzGAIgASgOMiQucHJvdG9zLnR4blN0YXR1cy5UUkFOU0FDVElPTl9TVEFUVVNSBnN0YXR1cxIdCgdtZXNzYWdlGAMgASgJSABSB21lc3NhZ2WIAQEiSwoSVFJBTlNBQ1RJT05fU1RBVFVTEgsKB1NVQ0NFU1MQABIKCgZGQUlMRUQQARIOCgpWQUxJREFUSU5HEAISDAoIQ0FOQ0VMRUQQA0IKCghfbWVzc2FnZQ==');

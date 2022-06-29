///
//  Generated code. Do not modify.
//  source: sync-v1/protos/pop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PushNotification_NOTIFICATION_TYPE extends $pb.ProtobufEnum {
  static const PushNotification_NOTIFICATION_TYPE PAY = PushNotification_NOTIFICATION_TYPE._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAY');
  static const PushNotification_NOTIFICATION_TYPE SIGN = PushNotification_NOTIFICATION_TYPE._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SIGN');
  static const PushNotification_NOTIFICATION_TYPE REMINDER = PushNotification_NOTIFICATION_TYPE._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REMINDER');
  static const PushNotification_NOTIFICATION_TYPE PROMOTION = PushNotification_NOTIFICATION_TYPE._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROMOTION');

  static const $core.List<PushNotification_NOTIFICATION_TYPE> values = <PushNotification_NOTIFICATION_TYPE> [
    PAY,
    SIGN,
    REMINDER,
    PROMOTION,
  ];

  static final $core.Map<$core.int, PushNotification_NOTIFICATION_TYPE> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PushNotification_NOTIFICATION_TYPE? valueOf($core.int value) => _byValue[value];

  const PushNotification_NOTIFICATION_TYPE._($core.int v, $core.String n) : super(v, n);
}

class txnStatus_TRANSACTION_STATUS extends $pb.ProtobufEnum {
  static const txnStatus_TRANSACTION_STATUS SUCCESS = txnStatus_TRANSACTION_STATUS._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCESS');
  static const txnStatus_TRANSACTION_STATUS FAILED = txnStatus_TRANSACTION_STATUS._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED');
  static const txnStatus_TRANSACTION_STATUS VALIDATING = txnStatus_TRANSACTION_STATUS._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'VALIDATING');
  static const txnStatus_TRANSACTION_STATUS CANCELED = txnStatus_TRANSACTION_STATUS._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CANCELED');

  static const $core.List<txnStatus_TRANSACTION_STATUS> values = <txnStatus_TRANSACTION_STATUS> [
    SUCCESS,
    FAILED,
    VALIDATING,
    CANCELED,
  ];

  static final $core.Map<$core.int, txnStatus_TRANSACTION_STATUS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static txnStatus_TRANSACTION_STATUS? valueOf($core.int value) => _byValue[value];

  const txnStatus_TRANSACTION_STATUS._($core.int v, $core.String n) : super(v, n);
}


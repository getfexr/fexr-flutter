///
//  Generated code. Do not modify.
//  source: native-interaction/rubix-native.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateDIDReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateDIDReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'didImage', protoName: 'didImage')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicShare', protoName: 'publicShare')
    ..hasRequiredFields = false
  ;

  CreateDIDReq._() : super();
  factory CreateDIDReq({
    $core.String? didImage,
    $core.String? publicShare,
  }) {
    final _result = create();
    if (didImage != null) {
      _result.didImage = didImage;
    }
    if (publicShare != null) {
      _result.publicShare = publicShare;
    }
    return _result;
  }
  factory CreateDIDReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDIDReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDIDReq clone() => CreateDIDReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDIDReq copyWith(void Function(CreateDIDReq) updates) => super.copyWith((message) => updates(message as CreateDIDReq)) as CreateDIDReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateDIDReq create() => CreateDIDReq._();
  CreateDIDReq createEmptyInstance() => create();
  static $pb.PbList<CreateDIDReq> createRepeated() => $pb.PbList<CreateDIDReq>();
  @$core.pragma('dart2js:noInline')
  static CreateDIDReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDIDReq>(create);
  static CreateDIDReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get didImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set didImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDidImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearDidImage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get publicShare => $_getSZ(1);
  @$pb.TagNumber(2)
  set publicShare($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPublicShare() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublicShare() => clearField(2);
}

class CreateDIDRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateDIDRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'did')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletId', protoName: 'walletId')
    ..hasRequiredFields = false
  ;

  CreateDIDRes._() : super();
  factory CreateDIDRes({
    $core.String? did,
    $core.String? walletId,
  }) {
    final _result = create();
    if (did != null) {
      _result.did = did;
    }
    if (walletId != null) {
      _result.walletId = walletId;
    }
    return _result;
  }
  factory CreateDIDRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDIDRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDIDRes clone() => CreateDIDRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDIDRes copyWith(void Function(CreateDIDRes) updates) => super.copyWith((message) => updates(message as CreateDIDRes)) as CreateDIDRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateDIDRes create() => CreateDIDRes._();
  CreateDIDRes createEmptyInstance() => create();
  static $pb.PbList<CreateDIDRes> createRepeated() => $pb.PbList<CreateDIDRes>();
  @$core.pragma('dart2js:noInline')
  static CreateDIDRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDIDRes>(create);
  static CreateDIDRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get walletId => $_getSZ(1);
  @$pb.TagNumber(2)
  set walletId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWalletId() => $_has(1);
  @$pb.TagNumber(2)
  void clearWalletId() => clearField(2);
}

class RequestTransactionPayloadReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestTransactionPayloadReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiver')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenCount', $pb.PbFieldType.OD, protoName: 'tokenCount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RequestTransactionPayloadReq._() : super();
  factory RequestTransactionPayloadReq({
    $core.String? receiver,
    $core.double? tokenCount,
    $core.String? comment,
    $core.int? type,
  }) {
    final _result = create();
    if (receiver != null) {
      _result.receiver = receiver;
    }
    if (tokenCount != null) {
      _result.tokenCount = tokenCount;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory RequestTransactionPayloadReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestTransactionPayloadReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestTransactionPayloadReq clone() => RequestTransactionPayloadReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestTransactionPayloadReq copyWith(void Function(RequestTransactionPayloadReq) updates) => super.copyWith((message) => updates(message as RequestTransactionPayloadReq)) as RequestTransactionPayloadReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestTransactionPayloadReq create() => RequestTransactionPayloadReq._();
  RequestTransactionPayloadReq createEmptyInstance() => create();
  static $pb.PbList<RequestTransactionPayloadReq> createRepeated() => $pb.PbList<RequestTransactionPayloadReq>();
  @$core.pragma('dart2js:noInline')
  static RequestTransactionPayloadReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestTransactionPayloadReq>(create);
  static RequestTransactionPayloadReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get receiver => $_getSZ(0);
  @$pb.TagNumber(1)
  set receiver($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReceiver() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceiver() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get tokenCount => $_getN(1);
  @$pb.TagNumber(2)
  set tokenCount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get comment => $_getSZ(2);
  @$pb.TagNumber(3)
  set comment($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasComment() => $_has(2);
  @$pb.TagNumber(3)
  void clearComment() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get type => $_getIZ(3);
  @$pb.TagNumber(4)
  set type($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}

class TxnSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxnSummary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnId', protoName: 'txnId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sender')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiver')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  TxnSummary._() : super();
  factory TxnSummary({
    $core.String? txnId,
    $core.String? sender,
    $core.String? receiver,
    $core.double? amount,
    $core.String? comment,
  }) {
    final _result = create();
    if (txnId != null) {
      _result.txnId = txnId;
    }
    if (sender != null) {
      _result.sender = sender;
    }
    if (receiver != null) {
      _result.receiver = receiver;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    return _result;
  }
  factory TxnSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxnSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxnSummary clone() => TxnSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxnSummary copyWith(void Function(TxnSummary) updates) => super.copyWith((message) => updates(message as TxnSummary)) as TxnSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxnSummary create() => TxnSummary._();
  TxnSummary createEmptyInstance() => create();
  static $pb.PbList<TxnSummary> createRepeated() => $pb.PbList<TxnSummary>();
  @$core.pragma('dart2js:noInline')
  static TxnSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxnSummary>(create);
  static TxnSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txnId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txnId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxnId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxnId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sender => $_getSZ(1);
  @$pb.TagNumber(2)
  set sender($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSender() => $_has(1);
  @$pb.TagNumber(2)
  void clearSender() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get receiver => $_getSZ(2);
  @$pb.TagNumber(3)
  set receiver($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiver() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiver() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get amount => $_getN(3);
  @$pb.TagNumber(4)
  set amount($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get comment => $_getSZ(4);
  @$pb.TagNumber(5)
  set comment($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearComment() => clearField(5);
}

class RequestTransactionPayloadRes_TxnSignPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestTransactionPayloadRes.TxnSignPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderSign', protoName: 'senderSign')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderSignQ', protoName: 'senderSignQ')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnDetails', protoName: 'txnDetails')
    ..hasRequiredFields = false
  ;

  RequestTransactionPayloadRes_TxnSignPayload._() : super();
  factory RequestTransactionPayloadRes_TxnSignPayload({
    $core.String? senderSign,
    $core.String? senderSignQ,
    $core.String? txnDetails,
  }) {
    final _result = create();
    if (senderSign != null) {
      _result.senderSign = senderSign;
    }
    if (senderSignQ != null) {
      _result.senderSignQ = senderSignQ;
    }
    if (txnDetails != null) {
      _result.txnDetails = txnDetails;
    }
    return _result;
  }
  factory RequestTransactionPayloadRes_TxnSignPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestTransactionPayloadRes_TxnSignPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestTransactionPayloadRes_TxnSignPayload clone() => RequestTransactionPayloadRes_TxnSignPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestTransactionPayloadRes_TxnSignPayload copyWith(void Function(RequestTransactionPayloadRes_TxnSignPayload) updates) => super.copyWith((message) => updates(message as RequestTransactionPayloadRes_TxnSignPayload)) as RequestTransactionPayloadRes_TxnSignPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestTransactionPayloadRes_TxnSignPayload create() => RequestTransactionPayloadRes_TxnSignPayload._();
  RequestTransactionPayloadRes_TxnSignPayload createEmptyInstance() => create();
  static $pb.PbList<RequestTransactionPayloadRes_TxnSignPayload> createRepeated() => $pb.PbList<RequestTransactionPayloadRes_TxnSignPayload>();
  @$core.pragma('dart2js:noInline')
  static RequestTransactionPayloadRes_TxnSignPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestTransactionPayloadRes_TxnSignPayload>(create);
  static RequestTransactionPayloadRes_TxnSignPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get senderSign => $_getSZ(0);
  @$pb.TagNumber(1)
  set senderSign($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderSign() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderSign() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get senderSignQ => $_getSZ(1);
  @$pb.TagNumber(2)
  set senderSignQ($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderSignQ() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderSignQ() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get txnDetails => $_getSZ(2);
  @$pb.TagNumber(3)
  set txnDetails($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnDetails() => clearField(3);
}

class RequestTransactionPayloadRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestTransactionPayloadRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'did')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tid')
    ..aOM<RequestTransactionPayloadRes_TxnSignPayload>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: RequestTransactionPayloadRes_TxnSignPayload.create)
    ..aOM<TxnSummary>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnSummary', protoName: 'txnSummary', subBuilder: TxnSummary.create)
    ..hasRequiredFields = false
  ;

  RequestTransactionPayloadRes._() : super();
  factory RequestTransactionPayloadRes({
    $core.String? did,
    $core.String? tid,
    RequestTransactionPayloadRes_TxnSignPayload? payload,
    TxnSummary? txnSummary,
  }) {
    final _result = create();
    if (did != null) {
      _result.did = did;
    }
    if (tid != null) {
      _result.tid = tid;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    if (txnSummary != null) {
      _result.txnSummary = txnSummary;
    }
    return _result;
  }
  factory RequestTransactionPayloadRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestTransactionPayloadRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestTransactionPayloadRes clone() => RequestTransactionPayloadRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestTransactionPayloadRes copyWith(void Function(RequestTransactionPayloadRes) updates) => super.copyWith((message) => updates(message as RequestTransactionPayloadRes)) as RequestTransactionPayloadRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestTransactionPayloadRes create() => RequestTransactionPayloadRes._();
  RequestTransactionPayloadRes createEmptyInstance() => create();
  static $pb.PbList<RequestTransactionPayloadRes> createRepeated() => $pb.PbList<RequestTransactionPayloadRes>();
  @$core.pragma('dart2js:noInline')
  static RequestTransactionPayloadRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestTransactionPayloadRes>(create);
  static RequestTransactionPayloadRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tid => $_getSZ(1);
  @$pb.TagNumber(2)
  set tid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTid() => $_has(1);
  @$pb.TagNumber(2)
  void clearTid() => clearField(2);

  @$pb.TagNumber(3)
  RequestTransactionPayloadRes_TxnSignPayload get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload(RequestTransactionPayloadRes_TxnSignPayload v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
  @$pb.TagNumber(3)
  RequestTransactionPayloadRes_TxnSignPayload ensurePayload() => $_ensure(2);

  @$pb.TagNumber(4)
  TxnSummary get txnSummary => $_getN(3);
  @$pb.TagNumber(4)
  set txnSummary(TxnSummary v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxnSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxnSummary() => clearField(4);
  @$pb.TagNumber(4)
  TxnSummary ensureTxnSummary() => $_ensure(3);
}

class InitiateTransactionReq_SignedTransactionPayload_SignedContent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitiateTransactionReq.SignedTransactionPayload.SignedContent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  InitiateTransactionReq_SignedTransactionPayload_SignedContent._() : super();
  factory InitiateTransactionReq_SignedTransactionPayload_SignedContent({
    $core.String? content,
    $core.String? signature,
  }) {
    final _result = create();
    if (content != null) {
      _result.content = content;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory InitiateTransactionReq_SignedTransactionPayload_SignedContent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateTransactionReq_SignedTransactionPayload_SignedContent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateTransactionReq_SignedTransactionPayload_SignedContent clone() => InitiateTransactionReq_SignedTransactionPayload_SignedContent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateTransactionReq_SignedTransactionPayload_SignedContent copyWith(void Function(InitiateTransactionReq_SignedTransactionPayload_SignedContent) updates) => super.copyWith((message) => updates(message as InitiateTransactionReq_SignedTransactionPayload_SignedContent)) as InitiateTransactionReq_SignedTransactionPayload_SignedContent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionReq_SignedTransactionPayload_SignedContent create() => InitiateTransactionReq_SignedTransactionPayload_SignedContent._();
  InitiateTransactionReq_SignedTransactionPayload_SignedContent createEmptyInstance() => create();
  static $pb.PbList<InitiateTransactionReq_SignedTransactionPayload_SignedContent> createRepeated() => $pb.PbList<InitiateTransactionReq_SignedTransactionPayload_SignedContent>();
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionReq_SignedTransactionPayload_SignedContent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateTransactionReq_SignedTransactionPayload_SignedContent>(create);
  static InitiateTransactionReq_SignedTransactionPayload_SignedContent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get signature => $_getSZ(1);
  @$pb.TagNumber(2)
  set signature($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class InitiateTransactionReq_SignedTransactionPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitiateTransactionReq.SignedTransactionPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'positions')
    ..aOM<InitiateTransactionReq_SignedTransactionPayload_SignedContent>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderSign', protoName: 'senderSign', subBuilder: InitiateTransactionReq_SignedTransactionPayload_SignedContent.create)
    ..aOM<InitiateTransactionReq_SignedTransactionPayload_SignedContent>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderSignQ', protoName: 'senderSignQ', subBuilder: InitiateTransactionReq_SignedTransactionPayload_SignedContent.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnDetails', protoName: 'txnDetails')
    ..hasRequiredFields = false
  ;

  InitiateTransactionReq_SignedTransactionPayload._() : super();
  factory InitiateTransactionReq_SignedTransactionPayload({
    $core.String? positions,
    InitiateTransactionReq_SignedTransactionPayload_SignedContent? senderSign,
    InitiateTransactionReq_SignedTransactionPayload_SignedContent? senderSignQ,
    $core.String? txnDetails,
  }) {
    final _result = create();
    if (positions != null) {
      _result.positions = positions;
    }
    if (senderSign != null) {
      _result.senderSign = senderSign;
    }
    if (senderSignQ != null) {
      _result.senderSignQ = senderSignQ;
    }
    if (txnDetails != null) {
      _result.txnDetails = txnDetails;
    }
    return _result;
  }
  factory InitiateTransactionReq_SignedTransactionPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateTransactionReq_SignedTransactionPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateTransactionReq_SignedTransactionPayload clone() => InitiateTransactionReq_SignedTransactionPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateTransactionReq_SignedTransactionPayload copyWith(void Function(InitiateTransactionReq_SignedTransactionPayload) updates) => super.copyWith((message) => updates(message as InitiateTransactionReq_SignedTransactionPayload)) as InitiateTransactionReq_SignedTransactionPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionReq_SignedTransactionPayload create() => InitiateTransactionReq_SignedTransactionPayload._();
  InitiateTransactionReq_SignedTransactionPayload createEmptyInstance() => create();
  static $pb.PbList<InitiateTransactionReq_SignedTransactionPayload> createRepeated() => $pb.PbList<InitiateTransactionReq_SignedTransactionPayload>();
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionReq_SignedTransactionPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateTransactionReq_SignedTransactionPayload>(create);
  static InitiateTransactionReq_SignedTransactionPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get positions => $_getSZ(0);
  @$pb.TagNumber(1)
  set positions($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPositions() => $_has(0);
  @$pb.TagNumber(1)
  void clearPositions() => clearField(1);

  @$pb.TagNumber(2)
  InitiateTransactionReq_SignedTransactionPayload_SignedContent get senderSign => $_getN(1);
  @$pb.TagNumber(2)
  set senderSign(InitiateTransactionReq_SignedTransactionPayload_SignedContent v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderSign() => clearField(2);
  @$pb.TagNumber(2)
  InitiateTransactionReq_SignedTransactionPayload_SignedContent ensureSenderSign() => $_ensure(1);

  @$pb.TagNumber(3)
  InitiateTransactionReq_SignedTransactionPayload_SignedContent get senderSignQ => $_getN(2);
  @$pb.TagNumber(3)
  set senderSignQ(InitiateTransactionReq_SignedTransactionPayload_SignedContent v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSenderSignQ() => $_has(2);
  @$pb.TagNumber(3)
  void clearSenderSignQ() => clearField(3);
  @$pb.TagNumber(3)
  InitiateTransactionReq_SignedTransactionPayload_SignedContent ensureSenderSignQ() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get txnDetails => $_getSZ(3);
  @$pb.TagNumber(4)
  set txnDetails($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxnDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxnDetails() => clearField(4);
}

class InitiateTransactionReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitiateTransactionReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiver')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenCount', $pb.PbFieldType.OD, protoName: 'tokenCount')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.O3)
    ..aOM<InitiateTransactionReq_SignedTransactionPayload>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payloadSigned', protoName: 'payloadSigned', subBuilder: InitiateTransactionReq_SignedTransactionPayload.create)
    ..hasRequiredFields = false
  ;

  InitiateTransactionReq._() : super();
  factory InitiateTransactionReq({
    $core.String? receiver,
    $core.double? tokenCount,
    $core.int? type,
    InitiateTransactionReq_SignedTransactionPayload? payloadSigned,
  }) {
    final _result = create();
    if (receiver != null) {
      _result.receiver = receiver;
    }
    if (tokenCount != null) {
      _result.tokenCount = tokenCount;
    }
    if (type != null) {
      _result.type = type;
    }
    if (payloadSigned != null) {
      _result.payloadSigned = payloadSigned;
    }
    return _result;
  }
  factory InitiateTransactionReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateTransactionReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateTransactionReq clone() => InitiateTransactionReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateTransactionReq copyWith(void Function(InitiateTransactionReq) updates) => super.copyWith((message) => updates(message as InitiateTransactionReq)) as InitiateTransactionReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionReq create() => InitiateTransactionReq._();
  InitiateTransactionReq createEmptyInstance() => create();
  static $pb.PbList<InitiateTransactionReq> createRepeated() => $pb.PbList<InitiateTransactionReq>();
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateTransactionReq>(create);
  static InitiateTransactionReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get receiver => $_getSZ(0);
  @$pb.TagNumber(1)
  set receiver($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReceiver() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceiver() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get tokenCount => $_getN(1);
  @$pb.TagNumber(2)
  set tokenCount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  InitiateTransactionReq_SignedTransactionPayload get payloadSigned => $_getN(3);
  @$pb.TagNumber(4)
  set payloadSigned(InitiateTransactionReq_SignedTransactionPayload v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPayloadSigned() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayloadSigned() => clearField(4);
  @$pb.TagNumber(4)
  InitiateTransactionReq_SignedTransactionPayload ensurePayloadSigned() => $_ensure(3);
}

class InitiateTransactionRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitiateTransactionRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionId', protoName: 'transactionId')
    ..hasRequiredFields = false
  ;

  InitiateTransactionRes._() : super();
  factory InitiateTransactionRes({
    $core.bool? success,
    $core.String? message,
    $core.String? transactionId,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (message != null) {
      _result.message = message;
    }
    if (transactionId != null) {
      _result.transactionId = transactionId;
    }
    return _result;
  }
  factory InitiateTransactionRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitiateTransactionRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitiateTransactionRes clone() => InitiateTransactionRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitiateTransactionRes copyWith(void Function(InitiateTransactionRes) updates) => super.copyWith((message) => updates(message as InitiateTransactionRes)) as InitiateTransactionRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionRes create() => InitiateTransactionRes._();
  InitiateTransactionRes createEmptyInstance() => create();
  static $pb.PbList<InitiateTransactionRes> createRepeated() => $pb.PbList<InitiateTransactionRes>();
  @$core.pragma('dart2js:noInline')
  static InitiateTransactionRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitiateTransactionRes>(create);
  static InitiateTransactionRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get transactionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set transactionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransactionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionId() => clearField(3);
}


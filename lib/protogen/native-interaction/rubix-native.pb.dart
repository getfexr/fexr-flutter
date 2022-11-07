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

class TxnDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxnDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wholeTokens', protoName: 'wholeTokens')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wholeTokenChainHash', protoName: 'wholeTokenChainHash')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partTokenChainHash', protoName: 'partTokenChainHash')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partTokens', protoName: 'partTokens')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partTokenChainArrays', protoName: 'partTokenChainArrays')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountLedger', protoName: 'amountLedger')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenPreviousSender', protoName: 'tokenPreviousSender')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'doubleSpendString', protoName: 'doubleSpendString')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverDidIpfsHash', protoName: 'receiverDidIpfsHash')
    ..a<$core.double>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAmount', $pb.PbFieldType.OD, protoName: 'requestedAmount')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tid')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allTokens', protoName: 'allTokens')
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newPart', protoName: 'newPart')
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'oldPart', protoName: 'oldPart')
    ..hasRequiredFields = false
  ;

  TxnDetails._() : super();
  factory TxnDetails({
    $core.String? wholeTokens,
    $core.String? wholeTokenChainHash,
    $core.String? partTokenChainHash,
    $core.String? partTokens,
    $core.String? partTokenChainArrays,
    $core.String? amountLedger,
    $core.String? tokenPreviousSender,
    $core.String? doubleSpendString,
    $core.String? receiverDidIpfsHash,
    $core.double? requestedAmount,
    $core.String? comment,
    $core.String? tid,
    $core.String? allTokens,
    $core.bool? newPart,
    $core.bool? oldPart,
  }) {
    final _result = create();
    if (wholeTokens != null) {
      _result.wholeTokens = wholeTokens;
    }
    if (wholeTokenChainHash != null) {
      _result.wholeTokenChainHash = wholeTokenChainHash;
    }
    if (partTokenChainHash != null) {
      _result.partTokenChainHash = partTokenChainHash;
    }
    if (partTokens != null) {
      _result.partTokens = partTokens;
    }
    if (partTokenChainArrays != null) {
      _result.partTokenChainArrays = partTokenChainArrays;
    }
    if (amountLedger != null) {
      _result.amountLedger = amountLedger;
    }
    if (tokenPreviousSender != null) {
      _result.tokenPreviousSender = tokenPreviousSender;
    }
    if (doubleSpendString != null) {
      _result.doubleSpendString = doubleSpendString;
    }
    if (receiverDidIpfsHash != null) {
      _result.receiverDidIpfsHash = receiverDidIpfsHash;
    }
    if (requestedAmount != null) {
      _result.requestedAmount = requestedAmount;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (tid != null) {
      _result.tid = tid;
    }
    if (allTokens != null) {
      _result.allTokens = allTokens;
    }
    if (newPart != null) {
      _result.newPart = newPart;
    }
    if (oldPart != null) {
      _result.oldPart = oldPart;
    }
    return _result;
  }
  factory TxnDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxnDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxnDetails clone() => TxnDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxnDetails copyWith(void Function(TxnDetails) updates) => super.copyWith((message) => updates(message as TxnDetails)) as TxnDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxnDetails create() => TxnDetails._();
  TxnDetails createEmptyInstance() => create();
  static $pb.PbList<TxnDetails> createRepeated() => $pb.PbList<TxnDetails>();
  @$core.pragma('dart2js:noInline')
  static TxnDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxnDetails>(create);
  static TxnDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get wholeTokens => $_getSZ(0);
  @$pb.TagNumber(1)
  set wholeTokens($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWholeTokens() => $_has(0);
  @$pb.TagNumber(1)
  void clearWholeTokens() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get wholeTokenChainHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set wholeTokenChainHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWholeTokenChainHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearWholeTokenChainHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get partTokenChainHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set partTokenChainHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPartTokenChainHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartTokenChainHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get partTokens => $_getSZ(3);
  @$pb.TagNumber(4)
  set partTokens($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPartTokens() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartTokens() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get partTokenChainArrays => $_getSZ(4);
  @$pb.TagNumber(5)
  set partTokenChainArrays($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPartTokenChainArrays() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartTokenChainArrays() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get amountLedger => $_getSZ(5);
  @$pb.TagNumber(6)
  set amountLedger($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmountLedger() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmountLedger() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tokenPreviousSender => $_getSZ(6);
  @$pb.TagNumber(7)
  set tokenPreviousSender($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTokenPreviousSender() => $_has(6);
  @$pb.TagNumber(7)
  void clearTokenPreviousSender() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get doubleSpendString => $_getSZ(7);
  @$pb.TagNumber(8)
  set doubleSpendString($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDoubleSpendString() => $_has(7);
  @$pb.TagNumber(8)
  void clearDoubleSpendString() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get receiverDidIpfsHash => $_getSZ(8);
  @$pb.TagNumber(9)
  set receiverDidIpfsHash($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReceiverDidIpfsHash() => $_has(8);
  @$pb.TagNumber(9)
  void clearReceiverDidIpfsHash() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get requestedAmount => $_getN(9);
  @$pb.TagNumber(10)
  set requestedAmount($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRequestedAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearRequestedAmount() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get comment => $_getSZ(10);
  @$pb.TagNumber(11)
  set comment($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasComment() => $_has(10);
  @$pb.TagNumber(11)
  void clearComment() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get tid => $_getSZ(11);
  @$pb.TagNumber(12)
  set tid($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTid() => $_has(11);
  @$pb.TagNumber(12)
  void clearTid() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get allTokens => $_getSZ(12);
  @$pb.TagNumber(13)
  set allTokens($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAllTokens() => $_has(12);
  @$pb.TagNumber(13)
  void clearAllTokens() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get newPart => $_getBF(13);
  @$pb.TagNumber(14)
  set newPart($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNewPart() => $_has(13);
  @$pb.TagNumber(14)
  void clearNewPart() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get oldPart => $_getBF(14);
  @$pb.TagNumber(15)
  set oldPart($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasOldPart() => $_has(14);
  @$pb.TagNumber(15)
  void clearOldPart() => clearField(15);
}

class RequestTransactionPayloadRes_TxnSignPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestTransactionPayloadRes.TxnSignPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderSign', protoName: 'senderSign')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderSignQ', protoName: 'senderSignQ')
    ..aOM<TxnDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnDetails', protoName: 'txnDetails', subBuilder: TxnDetails.create)
    ..hasRequiredFields = false
  ;

  RequestTransactionPayloadRes_TxnSignPayload._() : super();
  factory RequestTransactionPayloadRes_TxnSignPayload({
    $core.String? senderSign,
    $core.String? senderSignQ,
    TxnDetails? txnDetails,
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
  TxnDetails get txnDetails => $_getN(2);
  @$pb.TagNumber(3)
  set txnDetails(TxnDetails v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxnDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxnDetails() => clearField(3);
  @$pb.TagNumber(3)
  TxnDetails ensureTxnDetails() => $_ensure(2);
}

class RequestTransactionPayloadRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestTransactionPayloadRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'did')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tid')
    ..aOM<RequestTransactionPayloadRes_TxnSignPayload>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: RequestTransactionPayloadRes_TxnSignPayload.create)
    ..hasRequiredFields = false
  ;

  RequestTransactionPayloadRes._() : super();
  factory RequestTransactionPayloadRes({
    $core.String? did,
    $core.String? tid,
    RequestTransactionPayloadRes_TxnSignPayload? payload,
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
    ..aOM<TxnDetails>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnDetails', protoName: 'txnDetails', subBuilder: TxnDetails.create)
    ..hasRequiredFields = false
  ;

  InitiateTransactionReq_SignedTransactionPayload._() : super();
  factory InitiateTransactionReq_SignedTransactionPayload({
    $core.String? positions,
    InitiateTransactionReq_SignedTransactionPayload_SignedContent? senderSign,
    InitiateTransactionReq_SignedTransactionPayload_SignedContent? senderSignQ,
    TxnDetails? txnDetails,
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
  TxnDetails get txnDetails => $_getN(3);
  @$pb.TagNumber(4)
  set txnDetails(TxnDetails v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxnDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxnDetails() => clearField(4);
  @$pb.TagNumber(4)
  TxnDetails ensureTxnDetails() => $_ensure(3);
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


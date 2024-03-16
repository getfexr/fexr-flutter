//
//  Generated code. Do not modify.
//  source: native-interaction/rubix-external.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AuthRequest extends $pb.GeneratedMessage {
  factory AuthRequest({
    $core.String? uuid,
  }) {
    final $result = create();
    if (uuid != null) {
      $result.uuid = uuid;
    }
    return $result;
  }
  AuthRequest._() : super();
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uuid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uuid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUuid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUuid() => clearField(1);
}

class OrgAuthRequest extends $pb.GeneratedMessage {
  factory OrgAuthRequest({
    $core.String? orgName,
    $core.String? callBackUrl,
    $core.String? sessionId,
  }) {
    final $result = create();
    if (orgName != null) {
      $result.orgName = orgName;
    }
    if (callBackUrl != null) {
      $result.callBackUrl = callBackUrl;
    }
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  OrgAuthRequest._() : super();
  factory OrgAuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrgAuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrgAuthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orgName', protoName: 'orgName')
    ..aOS(2, _omitFieldNames ? '' : 'callBackUrl', protoName: 'callBackUrl')
    ..aOS(3, _omitFieldNames ? '' : 'sessionId', protoName: 'sessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrgAuthRequest clone() => OrgAuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrgAuthRequest copyWith(void Function(OrgAuthRequest) updates) => super.copyWith((message) => updates(message as OrgAuthRequest)) as OrgAuthRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrgAuthRequest create() => OrgAuthRequest._();
  OrgAuthRequest createEmptyInstance() => create();
  static $pb.PbList<OrgAuthRequest> createRepeated() => $pb.PbList<OrgAuthRequest>();
  @$core.pragma('dart2js:noInline')
  static OrgAuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrgAuthRequest>(create);
  static OrgAuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orgName => $_getSZ(0);
  @$pb.TagNumber(1)
  set orgName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrgName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrgName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get callBackUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set callBackUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallBackUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallBackUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => clearField(3);
}

class OrgStatus extends $pb.GeneratedMessage {
  factory OrgStatus({
    $core.bool? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  OrgStatus._() : super();
  factory OrgStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrgStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrgStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrgStatus clone() => OrgStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrgStatus copyWith(void Function(OrgStatus) updates) => super.copyWith((message) => updates(message as OrgStatus)) as OrgStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrgStatus create() => OrgStatus._();
  OrgStatus createEmptyInstance() => create();
  static $pb.PbList<OrgStatus> createRepeated() => $pb.PbList<OrgStatus>();
  @$core.pragma('dart2js:noInline')
  static OrgStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrgStatus>(create);
  static OrgStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get status => $_getBF(0);
  @$pb.TagNumber(1)
  set status($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class TxnRequest extends $pb.GeneratedMessage {
  factory TxnRequest({
    $core.String? receiver,
    $core.double? amount,
    $core.String? comment,
    $core.int? type,
    $core.String? purpose,
    $core.String? externalParty,
    $core.String? ticker,
  }) {
    final $result = create();
    if (receiver != null) {
      $result.receiver = receiver;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (type != null) {
      $result.type = type;
    }
    if (purpose != null) {
      $result.purpose = purpose;
    }
    if (externalParty != null) {
      $result.externalParty = externalParty;
    }
    if (ticker != null) {
      $result.ticker = ticker;
    }
    return $result;
  }
  TxnRequest._() : super();
  factory TxnRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxnRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TxnRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'receiver')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'comment')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'purpose')
    ..aOS(6, _omitFieldNames ? '' : 'externalParty', protoName: 'externalParty')
    ..aOS(7, _omitFieldNames ? '' : 'ticker')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxnRequest clone() => TxnRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxnRequest copyWith(void Function(TxnRequest) updates) => super.copyWith((message) => updates(message as TxnRequest)) as TxnRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TxnRequest create() => TxnRequest._();
  TxnRequest createEmptyInstance() => create();
  static $pb.PbList<TxnRequest> createRepeated() => $pb.PbList<TxnRequest>();
  @$core.pragma('dart2js:noInline')
  static TxnRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxnRequest>(create);
  static TxnRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get receiver => $_getSZ(0);
  @$pb.TagNumber(1)
  set receiver($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReceiver() => $_has(0);
  @$pb.TagNumber(1)
  void clearReceiver() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

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

  @$pb.TagNumber(5)
  $core.String get purpose => $_getSZ(4);
  @$pb.TagNumber(5)
  set purpose($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPurpose() => $_has(4);
  @$pb.TagNumber(5)
  void clearPurpose() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get externalParty => $_getSZ(5);
  @$pb.TagNumber(6)
  set externalParty($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExternalParty() => $_has(5);
  @$pb.TagNumber(6)
  void clearExternalParty() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ticker => $_getSZ(6);
  @$pb.TagNumber(7)
  set ticker($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTicker() => $_has(6);
  @$pb.TagNumber(7)
  void clearTicker() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

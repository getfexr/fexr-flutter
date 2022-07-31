///
//  Generated code. Do not modify.
//  source: sync-v1/protos/pop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'pop.pbenum.dart';

export 'pop.pbenum.dart';

class rubixWalletData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'rubixWalletData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dIDHash', protoName: 'dIDHash')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerID', protoName: 'peerID')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credits', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTxn', $pb.PbFieldType.O3, protoName: 'totalTxn')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stakedTokens', $pb.PbFieldType.O3, protoName: 'stakedTokens')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dIDShare', protoName: 'dIDShare')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicShare', protoName: 'publicShare')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'privateShare', protoName: 'privateShare')
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance', $pb.PbFieldType.OD)
    ..pc<TransactionHistory>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txnHistory', $pb.PbFieldType.PM, protoName: 'txnHistory', subBuilder: TransactionHistory.create)
    ..pc<QuorumSignedTransaction>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qSignedTxns', $pb.PbFieldType.PM, protoName: 'qSignedTxns', subBuilder: QuorumSignedTransaction.create)
    ..pc<TokenChain>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tChains', $pb.PbFieldType.PM, protoName: 'tChains', subBuilder: TokenChain.create)
    ..hasRequiredFields = false
  ;

  rubixWalletData._() : super();
  factory rubixWalletData({
    $core.String? dIDHash,
    $core.String? peerID,
    $core.int? credits,
    $core.int? totalTxn,
    $core.int? stakedTokens,
    $core.String? dIDShare,
    $core.String? publicShare,
    $core.String? privateShare,
    $core.double? balance,
    $core.Iterable<TransactionHistory>? txnHistory,
    $core.Iterable<QuorumSignedTransaction>? qSignedTxns,
    $core.Iterable<TokenChain>? tChains,
  }) {
    final _result = create();
    if (dIDHash != null) {
      _result.dIDHash = dIDHash;
    }
    if (peerID != null) {
      _result.peerID = peerID;
    }
    if (credits != null) {
      _result.credits = credits;
    }
    if (totalTxn != null) {
      _result.totalTxn = totalTxn;
    }
    if (stakedTokens != null) {
      _result.stakedTokens = stakedTokens;
    }
    if (dIDShare != null) {
      _result.dIDShare = dIDShare;
    }
    if (publicShare != null) {
      _result.publicShare = publicShare;
    }
    if (privateShare != null) {
      _result.privateShare = privateShare;
    }
    if (balance != null) {
      _result.balance = balance;
    }
    if (txnHistory != null) {
      _result.txnHistory.addAll(txnHistory);
    }
    if (qSignedTxns != null) {
      _result.qSignedTxns.addAll(qSignedTxns);
    }
    if (tChains != null) {
      _result.tChains.addAll(tChains);
    }
    return _result;
  }
  factory rubixWalletData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory rubixWalletData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  rubixWalletData clone() => rubixWalletData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  rubixWalletData copyWith(void Function(rubixWalletData) updates) => super.copyWith((message) => updates(message as rubixWalletData)) as rubixWalletData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static rubixWalletData create() => rubixWalletData._();
  rubixWalletData createEmptyInstance() => create();
  static $pb.PbList<rubixWalletData> createRepeated() => $pb.PbList<rubixWalletData>();
  @$core.pragma('dart2js:noInline')
  static rubixWalletData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<rubixWalletData>(create);
  static rubixWalletData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dIDHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set dIDHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDIDHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearDIDHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get peerID => $_getSZ(1);
  @$pb.TagNumber(2)
  set peerID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeerID() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeerID() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get credits => $_getIZ(2);
  @$pb.TagNumber(3)
  set credits($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCredits() => $_has(2);
  @$pb.TagNumber(3)
  void clearCredits() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalTxn => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalTxn($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalTxn() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalTxn() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get stakedTokens => $_getIZ(4);
  @$pb.TagNumber(5)
  set stakedTokens($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStakedTokens() => $_has(4);
  @$pb.TagNumber(5)
  void clearStakedTokens() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get dIDShare => $_getSZ(5);
  @$pb.TagNumber(6)
  set dIDShare($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDIDShare() => $_has(5);
  @$pb.TagNumber(6)
  void clearDIDShare() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get publicShare => $_getSZ(6);
  @$pb.TagNumber(7)
  set publicShare($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPublicShare() => $_has(6);
  @$pb.TagNumber(7)
  void clearPublicShare() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get privateShare => $_getSZ(7);
  @$pb.TagNumber(8)
  set privateShare($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPrivateShare() => $_has(7);
  @$pb.TagNumber(8)
  void clearPrivateShare() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get balance => $_getN(8);
  @$pb.TagNumber(9)
  set balance($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBalance() => $_has(8);
  @$pb.TagNumber(9)
  void clearBalance() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<TransactionHistory> get txnHistory => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<QuorumSignedTransaction> get qSignedTxns => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<TokenChain> get tChains => $_getList(11);
}

class TokenChain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TokenChain', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenHash', protoName: 'tokenHash')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenContent', protoName: 'tokenContent')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainData', protoName: 'chainData')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'holding')
    ..hasRequiredFields = false
  ;

  TokenChain._() : super();
  factory TokenChain({
    $core.String? tokenHash,
    $core.String? tokenContent,
    $core.String? chainData,
    $core.bool? holding,
  }) {
    final _result = create();
    if (tokenHash != null) {
      _result.tokenHash = tokenHash;
    }
    if (tokenContent != null) {
      _result.tokenContent = tokenContent;
    }
    if (chainData != null) {
      _result.chainData = chainData;
    }
    if (holding != null) {
      _result.holding = holding;
    }
    return _result;
  }
  factory TokenChain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenChain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenChain clone() => TokenChain()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenChain copyWith(void Function(TokenChain) updates) => super.copyWith((message) => updates(message as TokenChain)) as TokenChain; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenChain create() => TokenChain._();
  TokenChain createEmptyInstance() => create();
  static $pb.PbList<TokenChain> createRepeated() => $pb.PbList<TokenChain>();
  @$core.pragma('dart2js:noInline')
  static TokenChain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenChain>(create);
  static TokenChain? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tokenHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set tokenHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tokenContent => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenContent($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get chainData => $_getSZ(2);
  @$pb.TagNumber(3)
  set chainData($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChainData() => $_has(2);
  @$pb.TagNumber(3)
  void clearChainData() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get holding => $_getBF(3);
  @$pb.TagNumber(4)
  set holding($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHolding() => $_has(3);
  @$pb.TagNumber(4)
  void clearHolding() => clearField(4);
}

class QuorumSignedTransaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QuorumSignedTransaction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderDID', protoName: 'senderDID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'credits')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sign')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tid')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minestatus')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'consensusID', protoName: 'consensusID')
    ..hasRequiredFields = false
  ;

  QuorumSignedTransaction._() : super();
  factory QuorumSignedTransaction({
    $core.String? senderDID,
    $core.String? credits,
    $core.String? sign,
    $core.String? tid,
    $core.bool? minestatus,
    $core.String? consensusID,
  }) {
    final _result = create();
    if (senderDID != null) {
      _result.senderDID = senderDID;
    }
    if (credits != null) {
      _result.credits = credits;
    }
    if (sign != null) {
      _result.sign = sign;
    }
    if (tid != null) {
      _result.tid = tid;
    }
    if (minestatus != null) {
      _result.minestatus = minestatus;
    }
    if (consensusID != null) {
      _result.consensusID = consensusID;
    }
    return _result;
  }
  factory QuorumSignedTransaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuorumSignedTransaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuorumSignedTransaction clone() => QuorumSignedTransaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuorumSignedTransaction copyWith(void Function(QuorumSignedTransaction) updates) => super.copyWith((message) => updates(message as QuorumSignedTransaction)) as QuorumSignedTransaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuorumSignedTransaction create() => QuorumSignedTransaction._();
  QuorumSignedTransaction createEmptyInstance() => create();
  static $pb.PbList<QuorumSignedTransaction> createRepeated() => $pb.PbList<QuorumSignedTransaction>();
  @$core.pragma('dart2js:noInline')
  static QuorumSignedTransaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuorumSignedTransaction>(create);
  static QuorumSignedTransaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get senderDID => $_getSZ(0);
  @$pb.TagNumber(1)
  set senderDID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderDID() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderDID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get credits => $_getSZ(1);
  @$pb.TagNumber(2)
  set credits($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCredits() => $_has(1);
  @$pb.TagNumber(2)
  void clearCredits() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sign => $_getSZ(2);
  @$pb.TagNumber(3)
  set sign($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSign() => $_has(2);
  @$pb.TagNumber(3)
  void clearSign() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tid => $_getSZ(3);
  @$pb.TagNumber(4)
  set tid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTid() => $_has(3);
  @$pb.TagNumber(4)
  void clearTid() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get minestatus => $_getBF(4);
  @$pb.TagNumber(5)
  set minestatus($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinestatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinestatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get consensusID => $_getSZ(5);
  @$pb.TagNumber(6)
  set consensusID($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConsensusID() => $_has(5);
  @$pb.TagNumber(6)
  void clearConsensusID() => clearField(6);
}

class TransactionHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txn')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderDID', protoName: 'senderDID')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverDID', protoName: 'receiverDID')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'role')
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTime', $pb.PbFieldType.OD, protoName: 'totalTime')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statusCode', protoName: 'statusCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quorumList', protoName: 'quorumList')
    ..hasRequiredFields = false
  ;

  TransactionHistory._() : super();
  factory TransactionHistory({
    $core.String? txn,
    $core.String? senderDID,
    $core.String? receiverDID,
    $core.String? amount,
    $core.String? date,
    $core.String? role,
    $core.double? totalTime,
    $core.String? comment,
    $core.String? statusCode,
    $core.String? quorumList,
  }) {
    final _result = create();
    if (txn != null) {
      _result.txn = txn;
    }
    if (senderDID != null) {
      _result.senderDID = senderDID;
    }
    if (receiverDID != null) {
      _result.receiverDID = receiverDID;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (date != null) {
      _result.date = date;
    }
    if (role != null) {
      _result.role = role;
    }
    if (totalTime != null) {
      _result.totalTime = totalTime;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (statusCode != null) {
      _result.statusCode = statusCode;
    }
    if (quorumList != null) {
      _result.quorumList = quorumList;
    }
    return _result;
  }
  factory TransactionHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionHistory clone() => TransactionHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionHistory copyWith(void Function(TransactionHistory) updates) => super.copyWith((message) => updates(message as TransactionHistory)) as TransactionHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionHistory create() => TransactionHistory._();
  TransactionHistory createEmptyInstance() => create();
  static $pb.PbList<TransactionHistory> createRepeated() => $pb.PbList<TransactionHistory>();
  @$core.pragma('dart2js:noInline')
  static TransactionHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionHistory>(create);
  static TransactionHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txn => $_getSZ(0);
  @$pb.TagNumber(1)
  set txn($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxn() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxn() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get senderDID => $_getSZ(1);
  @$pb.TagNumber(2)
  set senderDID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSenderDID() => $_has(1);
  @$pb.TagNumber(2)
  void clearSenderDID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get receiverDID => $_getSZ(2);
  @$pb.TagNumber(3)
  set receiverDID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceiverDID() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceiverDID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get amount => $_getSZ(3);
  @$pb.TagNumber(4)
  set amount($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get date => $_getSZ(4);
  @$pb.TagNumber(5)
  set date($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get role => $_getSZ(5);
  @$pb.TagNumber(6)
  set role($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRole() => $_has(5);
  @$pb.TagNumber(6)
  void clearRole() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get totalTime => $_getN(6);
  @$pb.TagNumber(7)
  set totalTime($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get comment => $_getSZ(7);
  @$pb.TagNumber(8)
  set comment($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasComment() => $_has(7);
  @$pb.TagNumber(8)
  void clearComment() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get statusCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set statusCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatusCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatusCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get quorumList => $_getSZ(9);
  @$pb.TagNumber(10)
  set quorumList($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasQuorumList() => $_has(9);
  @$pb.TagNumber(10)
  void clearQuorumList() => clearField(10);
}

class web3WalletPermission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'web3WalletPermission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dID', protoName: 'dID')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload')
    ..hasRequiredFields = false
  ;

  web3WalletPermission._() : super();
  factory web3WalletPermission({
    $core.String? dID,
    $core.int? code,
    $core.String? payload,
  }) {
    final _result = create();
    if (dID != null) {
      _result.dID = dID;
    }
    if (code != null) {
      _result.code = code;
    }
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory web3WalletPermission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory web3WalletPermission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  web3WalletPermission clone() => web3WalletPermission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  web3WalletPermission copyWith(void Function(web3WalletPermission) updates) => super.copyWith((message) => updates(message as web3WalletPermission)) as web3WalletPermission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static web3WalletPermission create() => web3WalletPermission._();
  web3WalletPermission createEmptyInstance() => create();
  static $pb.PbList<web3WalletPermission> createRepeated() => $pb.PbList<web3WalletPermission>();
  @$core.pragma('dart2js:noInline')
  static web3WalletPermission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<web3WalletPermission>(create);
  static web3WalletPermission? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dID => $_getSZ(0);
  @$pb.TagNumber(1)
  set dID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDID() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get payload => $_getSZ(2);
  @$pb.TagNumber(3)
  set payload($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
}

class p2pConnectionStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'p2pConnectionStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connected')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  p2pConnectionStatus._() : super();
  factory p2pConnectionStatus({
    $core.bool? connected,
    $core.int? code,
    $core.String? message,
  }) {
    final _result = create();
    if (connected != null) {
      _result.connected = connected;
    }
    if (code != null) {
      _result.code = code;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory p2pConnectionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory p2pConnectionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  p2pConnectionStatus clone() => p2pConnectionStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  p2pConnectionStatus copyWith(void Function(p2pConnectionStatus) updates) => super.copyWith((message) => updates(message as p2pConnectionStatus)) as p2pConnectionStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static p2pConnectionStatus create() => p2pConnectionStatus._();
  p2pConnectionStatus createEmptyInstance() => create();
  static $pb.PbList<p2pConnectionStatus> createRepeated() => $pb.PbList<p2pConnectionStatus>();
  @$core.pragma('dart2js:noInline')
  static p2pConnectionStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<p2pConnectionStatus>(create);
  static p2pConnectionStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get connected => $_getBF(0);
  @$pb.TagNumber(1)
  set connected($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnected() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnected() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class txnPayload extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'txnPayload', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'senderDID', protoName: 'senderDID')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receiverDID', protoName: 'receiverDID')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'quorumList', protoName: 'quorumList')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fexrId', protoName: 'fexrId')
    ..hasRequiredFields = false
  ;

  txnPayload._() : super();
  factory txnPayload({
    $core.String? senderDID,
    $core.String? receiverDID,
    $core.double? amount,
    $core.String? comment,
    $core.Iterable<$core.String>? quorumList,
    $core.String? fexrId,
  }) {
    final _result = create();
    if (senderDID != null) {
      _result.senderDID = senderDID;
    }
    if (receiverDID != null) {
      _result.receiverDID = receiverDID;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (quorumList != null) {
      _result.quorumList.addAll(quorumList);
    }
    if (fexrId != null) {
      _result.fexrId = fexrId;
    }
    return _result;
  }
  factory txnPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory txnPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  txnPayload clone() => txnPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  txnPayload copyWith(void Function(txnPayload) updates) => super.copyWith((message) => updates(message as txnPayload)) as txnPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static txnPayload create() => txnPayload._();
  txnPayload createEmptyInstance() => create();
  static $pb.PbList<txnPayload> createRepeated() => $pb.PbList<txnPayload>();
  @$core.pragma('dart2js:noInline')
  static txnPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<txnPayload>(create);
  static txnPayload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get senderDID => $_getSZ(0);
  @$pb.TagNumber(1)
  set senderDID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSenderDID() => $_has(0);
  @$pb.TagNumber(1)
  void clearSenderDID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get receiverDID => $_getSZ(1);
  @$pb.TagNumber(2)
  set receiverDID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceiverDID() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiverDID() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get comment => $_getSZ(3);
  @$pb.TagNumber(4)
  set comment($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearComment() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get quorumList => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get fexrId => $_getSZ(5);
  @$pb.TagNumber(6)
  set fexrId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFexrId() => $_has(5);
  @$pb.TagNumber(6)
  void clearFexrId() => clearField(6);
}

class pushNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'pushNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..e<pushNotification_NOTIFICATION_TYPE>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notification', $pb.PbFieldType.OE, defaultOrMaker: pushNotification_NOTIFICATION_TYPE.PAY, valueOf: pushNotification_NOTIFICATION_TYPE.valueOf, enumValues: pushNotification_NOTIFICATION_TYPE.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<TransactionHistory>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txn', subBuilder: TransactionHistory.create)
    ..hasRequiredFields = false
  ;

  pushNotification._() : super();
  factory pushNotification({
    pushNotification_NOTIFICATION_TYPE? notification,
    $core.String? message,
    TransactionHistory? txn,
  }) {
    final _result = create();
    if (notification != null) {
      _result.notification = notification;
    }
    if (message != null) {
      _result.message = message;
    }
    if (txn != null) {
      _result.txn = txn;
    }
    return _result;
  }
  factory pushNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory pushNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  pushNotification clone() => pushNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  pushNotification copyWith(void Function(pushNotification) updates) => super.copyWith((message) => updates(message as pushNotification)) as pushNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static pushNotification create() => pushNotification._();
  pushNotification createEmptyInstance() => create();
  static $pb.PbList<pushNotification> createRepeated() => $pb.PbList<pushNotification>();
  @$core.pragma('dart2js:noInline')
  static pushNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<pushNotification>(create);
  static pushNotification? _defaultInstance;

  @$pb.TagNumber(1)
  pushNotification_NOTIFICATION_TYPE get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(pushNotification_NOTIFICATION_TYPE v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  TransactionHistory get txn => $_getN(2);
  @$pb.TagNumber(3)
  set txn(TransactionHistory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxn() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxn() => clearField(3);
  @$pb.TagNumber(3)
  TransactionHistory ensureTxn() => $_ensure(2);
}

class txnStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'txnStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tid')
    ..e<txnStatus_TRANSACTION_STATUS>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: txnStatus_TRANSACTION_STATUS.SUCCESS, valueOf: txnStatus_TRANSACTION_STATUS.valueOf, enumValues: txnStatus_TRANSACTION_STATUS.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  txnStatus._() : super();
  factory txnStatus({
    $core.String? tid,
    txnStatus_TRANSACTION_STATUS? status,
    $core.String? message,
  }) {
    final _result = create();
    if (tid != null) {
      _result.tid = tid;
    }
    if (status != null) {
      _result.status = status;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory txnStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory txnStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  txnStatus clone() => txnStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  txnStatus copyWith(void Function(txnStatus) updates) => super.copyWith((message) => updates(message as txnStatus)) as txnStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static txnStatus create() => txnStatus._();
  txnStatus createEmptyInstance() => create();
  static $pb.PbList<txnStatus> createRepeated() => $pb.PbList<txnStatus>();
  @$core.pragma('dart2js:noInline')
  static txnStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<txnStatus>(create);
  static txnStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tid => $_getSZ(0);
  @$pb.TagNumber(1)
  set tid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTid() => clearField(1);

  @$pb.TagNumber(2)
  txnStatus_TRANSACTION_STATUS get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(txnStatus_TRANSACTION_STATUS v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}


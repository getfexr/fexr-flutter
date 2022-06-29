///
//  Generated code. Do not modify.
//  source: sync-v1/protos/pop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'pop.pb.dart' as $1;
import '../google/protobuf/empty.pb.dart' as $0;
import 'pop.pbjson.dart';

export 'pop.pb.dart';

abstract class POPServiceBase extends $pb.GeneratedService {
  $async.Future<$1.p2pConnectionStatus> validateCertificate($pb.ServerContext ctx, $1.web3WalletPermission request);
  $async.Future<$1.rubixWalletData> fetchWalletData($pb.ServerContext ctx, $1.web3WalletPermission request);
  $async.Future<$1.web3WalletPermission> uploadWalletKeys($pb.ServerContext ctx, $1.rubixWalletData request);
  $async.Future<$1.p2pConnectionStatus> invalidateCertificate($pb.ServerContext ctx, $1.web3WalletPermission request);
  $async.Future<$1.txnStatus> initRubixTxn($pb.ServerContext ctx, $1.txnPayload request);
  $async.Future<$1.PushNotification> listen($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'validateCertificate': return $1.web3WalletPermission();
      case 'fetchWalletData': return $1.web3WalletPermission();
      case 'uploadWalletKeys': return $1.rubixWalletData();
      case 'invalidateCertificate': return $1.web3WalletPermission();
      case 'initRubixTxn': return $1.txnPayload();
      case 'Listen': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'validateCertificate': return this.validateCertificate(ctx, request as $1.web3WalletPermission);
      case 'fetchWalletData': return this.fetchWalletData(ctx, request as $1.web3WalletPermission);
      case 'uploadWalletKeys': return this.uploadWalletKeys(ctx, request as $1.rubixWalletData);
      case 'invalidateCertificate': return this.invalidateCertificate(ctx, request as $1.web3WalletPermission);
      case 'initRubixTxn': return this.initRubixTxn(ctx, request as $1.txnPayload);
      case 'Listen': return this.listen(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => POPServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => POPServiceBase$messageJson;
}


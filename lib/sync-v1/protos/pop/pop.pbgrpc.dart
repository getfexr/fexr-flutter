///
//  Generated code. Do not modify.
//  source: sync-v1/protos/pop.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'pop.pb.dart' as $0;
import '../google/protobuf/empty.pb.dart' as $1;
export 'pop.pb.dart';

class POPServiceClient extends $grpc.Client {
  static final _$validatePermission =
      $grpc.ClientMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
          '/protos.POPService/ValidatePermission',
          ($0.web3WalletPermission value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.p2pConnectionStatus.fromBuffer(value));
  static final _$syncWalletData =
      $grpc.ClientMethod<$0.web3WalletPermission, $0.rubixWalletData>(
          '/protos.POPService/SyncWalletData',
          ($0.web3WalletPermission value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.rubixWalletData.fromBuffer(value));
  static final _$uploadWalletKeys =
      $grpc.ClientMethod<$0.rubixWalletData, $0.web3WalletPermission>(
          '/protos.POPService/UploadWalletKeys',
          ($0.rubixWalletData value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.web3WalletPermission.fromBuffer(value));
  static final _$invalidatePermission =
      $grpc.ClientMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
          '/protos.POPService/InvalidatePermission',
          ($0.web3WalletPermission value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.p2pConnectionStatus.fromBuffer(value));
  static final _$initRubixTxn = $grpc.ClientMethod<$0.txnPayload, $0.txnStatus>(
      '/protos.POPService/InitRubixTxn',
      ($0.txnPayload value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.txnStatus.fromBuffer(value));
  static final _$walletNotification =
      $grpc.ClientMethod<$1.Empty, $0.pushNotification>(
          '/protos.POPService/WalletNotification',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.pushNotification.fromBuffer(value));

  POPServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.p2pConnectionStatus> validatePermission(
      $0.web3WalletPermission request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validatePermission, request, options: options);
  }

  $grpc.ResponseFuture<$0.rubixWalletData> syncWalletData(
      $0.web3WalletPermission request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncWalletData, request, options: options);
  }

  $grpc.ResponseFuture<$0.web3WalletPermission> uploadWalletKeys(
      $0.rubixWalletData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadWalletKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.p2pConnectionStatus> invalidatePermission(
      $0.web3WalletPermission request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invalidatePermission, request, options: options);
  }

  $grpc.ResponseStream<$0.txnStatus> initRubixTxn($0.txnPayload request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$initRubixTxn, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.pushNotification> walletNotification($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walletNotification, request, options: options);
  }
}

abstract class POPServiceBase extends $grpc.Service {
  $core.String get $name => 'protos.POPService';

  POPServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
            'ValidatePermission',
            validatePermission_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.web3WalletPermission.fromBuffer(value),
            ($0.p2pConnectionStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.web3WalletPermission, $0.rubixWalletData>(
        'SyncWalletData',
        syncWalletData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.web3WalletPermission.fromBuffer(value),
        ($0.rubixWalletData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.rubixWalletData, $0.web3WalletPermission>(
        'UploadWalletKeys',
        uploadWalletKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.rubixWalletData.fromBuffer(value),
        ($0.web3WalletPermission value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
            'InvalidatePermission',
            invalidatePermission_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.web3WalletPermission.fromBuffer(value),
            ($0.p2pConnectionStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.txnPayload, $0.txnStatus>(
        'InitRubixTxn',
        initRubixTxn_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.txnPayload.fromBuffer(value),
        ($0.txnStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.pushNotification>(
        'WalletNotification',
        walletNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.pushNotification value) => value.writeToBuffer()));
  }

  $async.Future<$0.p2pConnectionStatus> validatePermission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.web3WalletPermission> request) async {
    return validatePermission(call, await request);
  }

  $async.Future<$0.rubixWalletData> syncWalletData_Pre($grpc.ServiceCall call,
      $async.Future<$0.web3WalletPermission> request) async {
    return syncWalletData(call, await request);
  }

  $async.Future<$0.web3WalletPermission> uploadWalletKeys_Pre(
      $grpc.ServiceCall call, $async.Future<$0.rubixWalletData> request) async {
    return uploadWalletKeys(call, await request);
  }

  $async.Future<$0.p2pConnectionStatus> invalidatePermission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.web3WalletPermission> request) async {
    return invalidatePermission(call, await request);
  }

  $async.Stream<$0.txnStatus> initRubixTxn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.txnPayload> request) async* {
    yield* initRubixTxn(call, await request);
  }

  $async.Future<$0.pushNotification> walletNotification_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return walletNotification(call, await request);
  }

  $async.Future<$0.p2pConnectionStatus> validatePermission(
      $grpc.ServiceCall call, $0.web3WalletPermission request);
  $async.Future<$0.rubixWalletData> syncWalletData(
      $grpc.ServiceCall call, $0.web3WalletPermission request);
  $async.Future<$0.web3WalletPermission> uploadWalletKeys(
      $grpc.ServiceCall call, $0.rubixWalletData request);
  $async.Future<$0.p2pConnectionStatus> invalidatePermission(
      $grpc.ServiceCall call, $0.web3WalletPermission request);
  $async.Stream<$0.txnStatus> initRubixTxn(
      $grpc.ServiceCall call, $0.txnPayload request);
  $async.Future<$0.pushNotification> walletNotification(
      $grpc.ServiceCall call, $1.Empty request);
}

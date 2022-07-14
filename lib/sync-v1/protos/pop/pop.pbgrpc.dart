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
  static final _$validateCertificate =
      $grpc.ClientMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
          '/protos.POPService/validateCertificate',
          ($0.web3WalletPermission value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.p2pConnectionStatus.fromBuffer(value));
  static final _$fetchWalletData =
      $grpc.ClientMethod<$0.web3WalletPermission, $0.rubixWalletData>(
          '/protos.POPService/fetchWalletData',
          ($0.web3WalletPermission value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.rubixWalletData.fromBuffer(value));
  static final _$uploadWalletKeys =
      $grpc.ClientMethod<$0.rubixWalletData, $0.web3WalletPermission>(
          '/protos.POPService/uploadWalletKeys',
          ($0.rubixWalletData value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.web3WalletPermission.fromBuffer(value));
  static final _$invalidateCertificate =
      $grpc.ClientMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
          '/protos.POPService/invalidateCertificate',
          ($0.web3WalletPermission value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.p2pConnectionStatus.fromBuffer(value));
  static final _$initRubixTxn = $grpc.ClientMethod<$0.txnPayload, $0.txnStatus>(
      '/protos.POPService/initRubixTxn',
      ($0.txnPayload value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.txnStatus.fromBuffer(value));
  static final _$listen = $grpc.ClientMethod<$1.Empty, $0.PushNotification>(
      '/protos.POPService/Listen',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PushNotification.fromBuffer(value));

  POPServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.p2pConnectionStatus> validateCertificate(
      $0.web3WalletPermission request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateCertificate, request, options: options);
  }

  $grpc.ResponseStream<$0.rubixWalletData> fetchWalletData(
      $0.web3WalletPermission request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$fetchWalletData, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.web3WalletPermission> uploadWalletKeys(
      $0.rubixWalletData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadWalletKeys, request, options: options);
  }

  $grpc.ResponseFuture<$0.p2pConnectionStatus> invalidateCertificate(
      $0.web3WalletPermission request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invalidateCertificate, request, options: options);
  }

  $grpc.ResponseStream<$0.txnStatus> initRubixTxn($0.txnPayload request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$initRubixTxn, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.PushNotification> listen($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listen, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class POPServiceBase extends $grpc.Service {
  $core.String get $name => 'protos.POPService';

  POPServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
            'validateCertificate',
            validateCertificate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.web3WalletPermission.fromBuffer(value),
            ($0.p2pConnectionStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.web3WalletPermission, $0.rubixWalletData>(
        'fetchWalletData',
        fetchWalletData_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.web3WalletPermission.fromBuffer(value),
        ($0.rubixWalletData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.rubixWalletData, $0.web3WalletPermission>(
        'uploadWalletKeys',
        uploadWalletKeys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.rubixWalletData.fromBuffer(value),
        ($0.web3WalletPermission value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.web3WalletPermission, $0.p2pConnectionStatus>(
            'invalidateCertificate',
            invalidateCertificate_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.web3WalletPermission.fromBuffer(value),
            ($0.p2pConnectionStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.txnPayload, $0.txnStatus>(
        'initRubixTxn',
        initRubixTxn_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.txnPayload.fromBuffer(value),
        ($0.txnStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.PushNotification>(
        'Listen',
        listen_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.PushNotification value) => value.writeToBuffer()));
  }

  $async.Future<$0.p2pConnectionStatus> validateCertificate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.web3WalletPermission> request) async {
    return validateCertificate(call, await request);
  }

  $async.Stream<$0.rubixWalletData> fetchWalletData_Pre($grpc.ServiceCall call,
      $async.Future<$0.web3WalletPermission> request) async* {
    yield* fetchWalletData(call, await request);
  }

  $async.Future<$0.web3WalletPermission> uploadWalletKeys_Pre(
      $grpc.ServiceCall call, $async.Future<$0.rubixWalletData> request) async {
    return uploadWalletKeys(call, await request);
  }

  $async.Future<$0.p2pConnectionStatus> invalidateCertificate_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.web3WalletPermission> request) async {
    return invalidateCertificate(call, await request);
  }

  $async.Stream<$0.txnStatus> initRubixTxn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.txnPayload> request) async* {
    yield* initRubixTxn(call, await request);
  }

  $async.Stream<$0.PushNotification> listen_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async* {
    yield* listen(call, await request);
  }

  $async.Future<$0.p2pConnectionStatus> validateCertificate(
      $grpc.ServiceCall call, $0.web3WalletPermission request);
  $async.Stream<$0.rubixWalletData> fetchWalletData(
      $grpc.ServiceCall call, $0.web3WalletPermission request);
  $async.Future<$0.web3WalletPermission> uploadWalletKeys(
      $grpc.ServiceCall call, $0.rubixWalletData request);
  $async.Future<$0.p2pConnectionStatus> invalidateCertificate(
      $grpc.ServiceCall call, $0.web3WalletPermission request);
  $async.Stream<$0.txnStatus> initRubixTxn(
      $grpc.ServiceCall call, $0.txnPayload request);
  $async.Stream<$0.PushNotification> listen(
      $grpc.ServiceCall call, $1.Empty request);
}

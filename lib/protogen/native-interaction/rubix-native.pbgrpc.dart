///
//  Generated code. Do not modify.
//  source: native-interaction/rubix-native.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'rubix-native.pb.dart' as $2;
import '../google/protobuf/empty.pb.dart' as $1;
export 'rubix-native.pb.dart';

class RubixServiceClient extends $grpc.Client {
  static final _$createDID =
      $grpc.ClientMethod<$2.CreateDIDReq, $2.CreateDIDRes>(
          '/protos.RubixService/CreateDID',
          ($2.CreateDIDReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CreateDIDRes.fromBuffer(value));
  static final _$initiateTransaction = $grpc.ClientMethod<
          $2.RequestTransactionPayloadReq, $2.RequestTransactionPayloadRes>(
      '/protos.RubixService/InitiateTransaction',
      ($2.RequestTransactionPayloadReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RequestTransactionPayloadRes.fromBuffer(value));
  static final _$finaliseTransaction =
      $grpc.ClientMethod<$2.FinaliseTransactionPayload, $2.TxnSummary>(
          '/protos.RubixService/FinaliseTransaction',
          ($2.FinaliseTransactionPayload value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.TxnSummary.fromBuffer(value));
  static final _$getTransactionLog =
      $grpc.ClientMethod<$2.GetTransactionLogReq, $2.GetTransactionLogRes>(
          '/protos.RubixService/GetTransactionLog',
          ($2.GetTransactionLogReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetTransactionLogRes.fromBuffer(value));
  static final _$getBalance = $grpc.ClientMethod<$1.Empty, $2.GetBalanceRes>(
      '/protos.RubixService/GetBalance',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetBalanceRes.fromBuffer(value));

  RubixServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateDIDRes> createDID($2.CreateDIDReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDID, request, options: options);
  }

  $grpc.ResponseFuture<$2.RequestTransactionPayloadRes> initiateTransaction(
      $2.RequestTransactionPayloadReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initiateTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.TxnSummary> finaliseTransaction(
      $2.FinaliseTransactionPayload request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$finaliseTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetTransactionLogRes> getTransactionLog(
      $2.GetTransactionLogReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransactionLog, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetBalanceRes> getBalance($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBalance, request, options: options);
  }
}

abstract class RubixServiceBase extends $grpc.Service {
  $core.String get $name => 'protos.RubixService';

  RubixServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateDIDReq, $2.CreateDIDRes>(
        'CreateDID',
        createDID_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateDIDReq.fromBuffer(value),
        ($2.CreateDIDRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RequestTransactionPayloadReq,
            $2.RequestTransactionPayloadRes>(
        'InitiateTransaction',
        initiateTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RequestTransactionPayloadReq.fromBuffer(value),
        ($2.RequestTransactionPayloadRes value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.FinaliseTransactionPayload, $2.TxnSummary>(
            'FinaliseTransaction',
            finaliseTransaction_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.FinaliseTransactionPayload.fromBuffer(value),
            ($2.TxnSummary value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetTransactionLogReq, $2.GetTransactionLogRes>(
            'GetTransactionLog',
            getTransactionLog_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetTransactionLogReq.fromBuffer(value),
            ($2.GetTransactionLogRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.GetBalanceRes>(
        'GetBalance',
        getBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.GetBalanceRes value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateDIDRes> createDID_Pre(
      $grpc.ServiceCall call, $async.Future<$2.CreateDIDReq> request) async {
    return createDID(call, await request);
  }

  $async.Future<$2.RequestTransactionPayloadRes> initiateTransaction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RequestTransactionPayloadReq> request) async {
    return initiateTransaction(call, await request);
  }

  $async.Future<$2.TxnSummary> finaliseTransaction_Pre($grpc.ServiceCall call,
      $async.Future<$2.FinaliseTransactionPayload> request) async {
    return finaliseTransaction(call, await request);
  }

  $async.Future<$2.GetTransactionLogRes> getTransactionLog_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.GetTransactionLogReq> request) async {
    return getTransactionLog(call, await request);
  }

  $async.Future<$2.GetBalanceRes> getBalance_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getBalance(call, await request);
  }

  $async.Future<$2.CreateDIDRes> createDID(
      $grpc.ServiceCall call, $2.CreateDIDReq request);
  $async.Future<$2.RequestTransactionPayloadRes> initiateTransaction(
      $grpc.ServiceCall call, $2.RequestTransactionPayloadReq request);
  $async.Future<$2.TxnSummary> finaliseTransaction(
      $grpc.ServiceCall call, $2.FinaliseTransactionPayload request);
  $async.Future<$2.GetTransactionLogRes> getTransactionLog(
      $grpc.ServiceCall call, $2.GetTransactionLogReq request);
  $async.Future<$2.GetBalanceRes> getBalance(
      $grpc.ServiceCall call, $1.Empty request);
}

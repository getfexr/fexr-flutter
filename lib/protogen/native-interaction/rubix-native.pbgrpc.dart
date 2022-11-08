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
export 'rubix-native.pb.dart';

class RubixServiceClient extends $grpc.Client {
  static final _$createDID =
      $grpc.ClientMethod<$2.CreateDIDReq, $2.CreateDIDRes>(
          '/protos.RubixService/CreateDID',
          ($2.CreateDIDReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.CreateDIDRes.fromBuffer(value));
  static final _$requestTransactionPayload = $grpc.ClientMethod<
          $2.RequestTransactionPayloadReq, $2.RequestTransactionPayloadRes>(
      '/protos.RubixService/RequestTransactionPayload',
      ($2.RequestTransactionPayloadReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.RequestTransactionPayloadRes.fromBuffer(value));
  static final _$initiateTransaction =
      $grpc.ClientMethod<$2.InitiateTransactionReq, $2.TxnSummary>(
          '/protos.RubixService/InitiateTransaction',
          ($2.InitiateTransactionReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.TxnSummary.fromBuffer(value));

  RubixServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateDIDRes> createDID($2.CreateDIDReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDID, request, options: options);
  }

  $grpc.ResponseFuture<$2.RequestTransactionPayloadRes>
      requestTransactionPayload($2.RequestTransactionPayloadReq request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestTransactionPayload, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.TxnSummary> initiateTransaction(
      $2.InitiateTransactionReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initiateTransaction, request, options: options);
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
        'RequestTransactionPayload',
        requestTransactionPayload_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.RequestTransactionPayloadReq.fromBuffer(value),
        ($2.RequestTransactionPayloadRes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.InitiateTransactionReq, $2.TxnSummary>(
        'InitiateTransaction',
        initiateTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.InitiateTransactionReq.fromBuffer(value),
        ($2.TxnSummary value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreateDIDRes> createDID_Pre(
      $grpc.ServiceCall call, $async.Future<$2.CreateDIDReq> request) async {
    return createDID(call, await request);
  }

  $async.Future<$2.RequestTransactionPayloadRes> requestTransactionPayload_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.RequestTransactionPayloadReq> request) async {
    return requestTransactionPayload(call, await request);
  }

  $async.Future<$2.TxnSummary> initiateTransaction_Pre($grpc.ServiceCall call,
      $async.Future<$2.InitiateTransactionReq> request) async {
    return initiateTransaction(call, await request);
  }

  $async.Future<$2.CreateDIDRes> createDID(
      $grpc.ServiceCall call, $2.CreateDIDReq request);
  $async.Future<$2.RequestTransactionPayloadRes> requestTransactionPayload(
      $grpc.ServiceCall call, $2.RequestTransactionPayloadReq request);
  $async.Future<$2.TxnSummary> initiateTransaction(
      $grpc.ServiceCall call, $2.InitiateTransactionReq request);
}

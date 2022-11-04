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

  RubixServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreateDIDRes> createDID($2.CreateDIDReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDID, request, options: options);
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
  }

  $async.Future<$2.CreateDIDRes> createDID_Pre(
      $grpc.ServiceCall call, $async.Future<$2.CreateDIDReq> request) async {
    return createDID(call, await request);
  }

  $async.Future<$2.CreateDIDRes> createDID(
      $grpc.ServiceCall call, $2.CreateDIDReq request);
}

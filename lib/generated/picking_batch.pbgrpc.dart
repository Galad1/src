///
//  Generated code. Do not modify.
//  source: picking_batch.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'picking_batch.pb.dart' as $0;
export 'picking_batch.pb.dart';

class PickingBatchClient extends $grpc.Client {
  static final _$loadPickingBatches = $grpc.ClientMethod<
          $0.LoadPickingBatchesParameters, $0.PickingBatchSummary>(
      '/PickingBatch/LoadPickingBatches',
      ($0.LoadPickingBatchesParameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PickingBatchSummary.fromBuffer(value));
  static final _$loadPickingBatchDetails = $grpc.ClientMethod<
          $0.LoadPickingBatchDetailsParameters, $0.PickingBatchDetails>(
      '/PickingBatch/LoadPickingBatchDetails',
      ($0.LoadPickingBatchDetailsParameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PickingBatchDetails.fromBuffer(value));
  static final _$startPickingBatch = $grpc.ClientMethod<
          $0.StartPickingBatchParameters, $0.StartPickingBatchOutput>(
      '/PickingBatch/StartPickingBatch',
      ($0.StartPickingBatchParameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.StartPickingBatchOutput.fromBuffer(value));
  static final _$processPickingLine =
      $grpc.ClientMethod<$0.ProcessPickingLineParameters, $0.Result>(
          '/PickingBatch/ProcessPickingLine',
          ($0.ProcessPickingLineParameters value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Result.fromBuffer(value));

  PickingBatchClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.PickingBatchSummary> loadPickingBatches(
      $0.LoadPickingBatchesParameters request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$loadPickingBatches, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.PickingBatchDetails> loadPickingBatchDetails(
      $0.LoadPickingBatchDetailsParameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loadPickingBatchDetails, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.StartPickingBatchOutput> startPickingBatch(
      $0.StartPickingBatchParameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startPickingBatch, request, options: options);
  }

  $grpc.ResponseFuture<$0.Result> processPickingLine(
      $0.ProcessPickingLineParameters request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$processPickingLine, request, options: options);
  }
}

abstract class PickingBatchServiceBase extends $grpc.Service {
  $core.String get $name => 'PickingBatch';

  PickingBatchServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoadPickingBatchesParameters,
            $0.PickingBatchSummary>(
        'LoadPickingBatches',
        loadPickingBatches_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.LoadPickingBatchesParameters.fromBuffer(value),
        ($0.PickingBatchSummary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoadPickingBatchDetailsParameters,
            $0.PickingBatchDetails>(
        'LoadPickingBatchDetails',
        loadPickingBatchDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LoadPickingBatchDetailsParameters.fromBuffer(value),
        ($0.PickingBatchDetails value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StartPickingBatchParameters,
            $0.StartPickingBatchOutput>(
        'StartPickingBatch',
        startPickingBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.StartPickingBatchParameters.fromBuffer(value),
        ($0.StartPickingBatchOutput value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProcessPickingLineParameters, $0.Result>(
        'ProcessPickingLine',
        processPickingLine_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ProcessPickingLineParameters.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
  }

  $async.Stream<$0.PickingBatchSummary> loadPickingBatches_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LoadPickingBatchesParameters> request) async* {
    yield* loadPickingBatches(call, await request);
  }

  $async.Future<$0.PickingBatchDetails> loadPickingBatchDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LoadPickingBatchDetailsParameters> request) async {
    return loadPickingBatchDetails(call, await request);
  }

  $async.Future<$0.StartPickingBatchOutput> startPickingBatch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.StartPickingBatchParameters> request) async {
    return startPickingBatch(call, await request);
  }

  $async.Future<$0.Result> processPickingLine_Pre($grpc.ServiceCall call,
      $async.Future<$0.ProcessPickingLineParameters> request) async {
    return processPickingLine(call, await request);
  }

  $async.Stream<$0.PickingBatchSummary> loadPickingBatches(
      $grpc.ServiceCall call, $0.LoadPickingBatchesParameters request);
  $async.Future<$0.PickingBatchDetails> loadPickingBatchDetails(
      $grpc.ServiceCall call, $0.LoadPickingBatchDetailsParameters request);
  $async.Future<$0.StartPickingBatchOutput> startPickingBatch(
      $grpc.ServiceCall call, $0.StartPickingBatchParameters request);
  $async.Future<$0.Result> processPickingLine(
      $grpc.ServiceCall call, $0.ProcessPickingLineParameters request);
}

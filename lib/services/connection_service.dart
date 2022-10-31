import 'package:flutter_root/generated/picking_batch.pbgrpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

class ConnectionClient {

  static ConnectionClient client = ConnectionClient();

  GrpcOrGrpcWebClientChannel channel = GrpcOrGrpcWebClientChannel.toSeparateEndpoints(
    grpcHost: '10.0.2.2',
    grpcPort: 9090,
    grpcTransportSecure: false,
    grpcWebHost: '127.0.0.1',
    grpcWebPort: 8080,
    grpcWebTransportSecure: false,
  );

  late PickingBatchClient stub;

  ConnectionClient() {
    stub = PickingBatchClient(channel);
  }

  Future<ResponseStream<PickingBatchSummary>> fetchLoadPickingBatches(
      userID, warehouse, showAll) async {
    final parameter = LoadPickingBatchesParameters()
      ..userID = userID
      ..warehouse = warehouse
      ..showAll = showAll;
    final result = stub.loadPickingBatches(parameter);
    return result;
  }

  Future<PickingBatchDetails> fetchLoadPickingBatchDetails(
      pickingBatchId) async {
    final parameter = LoadPickingBatchDetailsParameters()
      ..pickingBatchId = pickingBatchId;
    final result = stub.loadPickingBatchDetails(parameter);
    return result;
  }

  Future<ResponseFuture<StartPickingBatchOutput>> startPickingBatch(
      userID, pickingBatchId) async {
    final parameter = StartPickingBatchParameters()
      ..userID = userID
      ..pickingBatchId = pickingBatchId;
    final result = stub.startPickingBatch(parameter);
    return result;
  }

  Future<ResponseFuture<Result>> processPickingLine(pickingBatchId,
      pickingLineId, userId, item, location, lot, quantity) async {
    final parameter = ProcessPickingLineParameters()
      ..pickingBatchId = pickingBatchId
      ..pickingLineId = pickingLineId
      ..userID = userId
      ..item = item
      ..location = location
      ..lot = lot
      ..quantity = quantity;

    final result = stub.processPickingLine(parameter);

    return result;
  }
}

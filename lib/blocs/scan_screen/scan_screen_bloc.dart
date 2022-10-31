import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_root/generated/picking_batch.pb.dart';
import 'package:flutter_root/models/product.dart';
import 'package:flutter_root/services/connection_service.dart';
import 'package:meta/meta.dart';

part 'scan_screen_event.dart';
part 'scan_screen_state.dart';

class ScanScreenBloc extends Bloc<ScanScreenEvent, ScanScreenState> {
  ScanScreenBloc() : super(ScanScreenState()) {
    on<LoadPickingBatchDetails>((event, emit) async {
      var result = await ConnectionClient.client
          .fetchLoadPickingBatchDetails(event.pickingBatchId);
      emit(ScanScreenState(batchDetails: result));
    });
    on<NextLine>((event, emit) async {
      if (state.batchDetails != null) {
        if (event.isSkipped) {
          emit(ScanScreenState(
              batchDetails: state.batchDetails,
              lineIndex: event.lineIndex + 1));
          return;
        }
        ConnectionClient.client.processPickingLine(
            state.batchDetails?.pickingBatchId,
            state.batchDetails?.lines[event.lineIndex].lineId,
            "9820",
            state.batchDetails?.lines[event.lineIndex].item,
            state.batchDetails?.lines[event.lineIndex].location,
            state.batchDetails?.lines[event.lineIndex].lot,
            state.batchDetails?.lines[event.lineIndex].quantity);
        if (event.lineIndex == state.batchDetails!.lines.length - 1) {
          emit(ScanScreenState(lineIndex: 0, isFinished: true));
        } else {
          emit(ScanScreenState(
              batchDetails: state.batchDetails,
              lineIndex: event.lineIndex + 1));
        }
      }
    });
  }
}

import 'dart:core';
import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_root/generated/picking_batch.pb.dart';
import 'package:flutter_root/models/product.dart';
import 'package:flutter_root/services/connection_service.dart';
import 'package:meta/meta.dart';

part 'batch_details_event.dart';
part 'batch_details_state.dart';

class BatchDetailsBloc extends Bloc<BatchDetailsEvent, BatchDetailsState> {
  BatchDetailsBloc() : super(BatchDetailsState()) {
    on<LoadPickingBatchDetails>((event, emit) async {
      var result = await ConnectionClient.client
          .fetchLoadPickingBatchDetails(event.pickingBatchId);
      var dueLines = result.lines.where((line) => line.status == 0).toList();
      emit(state.copyWith(batchDetails: result, dueLines: dueLines));
    });
    on<NextLine>((event, emit) async {
      if (state.batchDetails != null) {
        if (event.isSkipped) {
          if (event.lineIndex == state.dueLines.length - 1) {
            emit(BatchDetailsState(lineIndex: 0, isFinished: true));
          } else {
            emit(state.copyWith(lineIndex: event.lineIndex + 1));
          }
        }
        ConnectionClient.client.processPickingLine(
            state.batchDetails?.pickingBatchId,
            state.dueLines[event.lineIndex].lineId,
            "9820",
            state.dueLines[event.lineIndex].item,
            state.dueLines[event.lineIndex].location,
            state.dueLines[event.lineIndex].lot,
            state.dueLines[event.lineIndex].quantity);
        if (event.lineIndex == state.dueLines.length - 1) {
          emit(BatchDetailsState(lineIndex: 0, isFinished: true));
        } else {
          emit(state.copyWith(lineIndex: event.lineIndex + 1));
        }
      }
    });
    on<EnableLocationTextField>((event, emit) async {
      emit(state.copyWith(isLocationTextFieldEnabled: true));
    });
    on<DisableLocationTextField>((event, emit) async {
      emit(state.copyWith(isLocationTextFieldEnabled: false));
    });
    on<DisableItemTextField>((event, emit) async {
      emit(state.copyWith(isItemTextFieldEnabled: false));
    });
    on<EnableItemTextField>((event, emit) async {
      emit(state.copyWith(isItemTextFieldEnabled: true));
    });
    on<ItemIsScanned>((event, emit) async {
      emit(state.copyWith(isItemScanned: true));
    });
    on<LocationIsScanned>((event, emit) async {
      emit(state.copyWith(isLocationScanned: true));
    });
    on<ItemAndLocationIsNotScanned>((event, emit) {
      emit(state.copyWith(isItemScanned: false, isLocationScanned: false));
    });
    on<ItemScanError>((event, emit) {
      emit(state.copyWith(isItemScanError: true));
    });
    on<LocationScanError>((event, emit) {
      emit(state.copyWith(isLocationScanError: true));
    });
  }
}

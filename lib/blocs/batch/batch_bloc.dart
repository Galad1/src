import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_root/generated/picking_batch.pb.dart';
import 'package:flutter_root/services/connection_service.dart';
import 'package:meta/meta.dart';

part 'batch_event.dart';
part 'batch_state.dart';

class BatchBloc extends Bloc<BatchEvent, BatchState> {
  BatchBloc() : super(BatchState()) {
    on<LoadPickingBatches>((event, emit) async {
      var myBatches = await ConnectionClient.client
          .fetchLoadPickingBatches("9820", "Magazijn Veenendaal", false);
      var allBatches = await ConnectionClient.client
          .fetchLoadPickingBatches("9820", "Magazijn Veenendaal", true);
      emit(state.copyWith(
          myBatches: await myBatches.toList(),
          allBatches: await allBatches.toList(),
          isFetched: true));
    });
    on<ChangeFromPage>((event, emit) async {
      if (event.pageID == 0) {
        emit(state.copyWith(pageID: 1));
      } else {
        emit(state.copyWith(pageID: 0));
      }
    });
  }
}

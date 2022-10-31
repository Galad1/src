part of 'scan_screen_bloc.dart';

abstract class ScanScreenEvent extends Equatable {
  const ScanScreenEvent();

  @override
  List<int> get props => [];
}

class NextLine extends ScanScreenEvent {
  final int lineIndex;
  final bool isSkipped;
  const NextLine(this.lineIndex, this.isSkipped);

  @override
  List<int> get props => [lineIndex];
}

class LoadPickingBatchDetails extends ScanScreenEvent {
  final String pickingBatchId;
  const LoadPickingBatchDetails(this.pickingBatchId);
}

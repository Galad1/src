part of 'scan_screen_bloc.dart';

class ScanScreenState extends Equatable {
  late PickingBatchDetails? batchDetails;
  final int lineIndex;
  final bool isFinished;

  ScanScreenState(
      {this.batchDetails, this.lineIndex = 0, this.isFinished = false});

  @override
  List<Object?> get props => [batchDetails, lineIndex];
}

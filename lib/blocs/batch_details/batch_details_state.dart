part of 'batch_details_bloc.dart';

class BatchDetailsState extends Equatable {
  final PickingBatchDetails? batchDetails;
  final List<PickingBatchLine> dueLines;
  final int lineIndex;
  final bool isFinished;
  final bool isItemTextFieldEnabled;
  final bool isLocationTextFieldEnabled;
  final bool isItemScanned;
  final bool isLocationScanned;
  final bool isItemScanError;
  final bool isLocationScanError;

  const BatchDetailsState(
      {this.batchDetails,
      this.dueLines = const <PickingBatchLine>[],
      this.lineIndex = 0,
      this.isFinished = false,
      this.isItemTextFieldEnabled = true,
      this.isLocationTextFieldEnabled = false,
      this.isItemScanned = false,
      this.isLocationScanned = false,
      this.isItemScanError = false,
      this.isLocationScanError = false});

  @override
  List<Object?> get props => [
        batchDetails,
        lineIndex,
        dueLines,
        isFinished,
        isItemTextFieldEnabled,
        isLocationTextFieldEnabled,
        isItemScanned,
        isLocationScanned,
        isItemScanError,
        isLocationScanError,
      ];

  /// copyWith() is used to change the state(s) of a bloc,
  /// without having to initialize the other states who dont need to change
  BatchDetailsState copyWith(
      {PickingBatchDetails? batchDetails,
      List<PickingBatchLine>? dueLines,
      int? lineIndex,
      bool? isFinished,
      bool? isItemTextFieldEnabled,
      bool? isLocationTextFieldEnabled,
      bool? isItemScanned,
      bool? isLocationScanned,
      bool? isItemScanError,
      bool? isLocationScanError}) {
    return BatchDetailsState(
        batchDetails: batchDetails ?? this.batchDetails,
        dueLines: dueLines ?? this.dueLines,
        lineIndex: lineIndex ?? this.lineIndex,
        isFinished: isFinished ?? this.isFinished,
        isItemTextFieldEnabled:
            isItemTextFieldEnabled ?? this.isItemTextFieldEnabled,
        isLocationTextFieldEnabled:
            isLocationTextFieldEnabled ?? this.isLocationTextFieldEnabled,
        isItemScanned: isItemScanned ?? this.isItemScanned,
        isLocationScanned: isLocationScanned ?? this.isLocationScanned,
        isItemScanError: isItemScanError ?? this.isItemScanError,
        isLocationScanError: isLocationScanError ?? this.isLocationScanError);
  }
}

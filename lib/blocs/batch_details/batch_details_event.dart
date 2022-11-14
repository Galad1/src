part of 'batch_details_bloc.dart';

abstract class BatchDetailsEvent extends Equatable {
  const BatchDetailsEvent();

  @override
  List<Object?> get props => [];
}

class NextLine extends BatchDetailsEvent {
  final int lineIndex;
  final bool isSkipped;
  const NextLine(this.lineIndex, this.isSkipped);

  @override
  List<Object?> get props => [lineIndex];
}

class EnableLocationTextField extends BatchDetailsEvent {}

class DisableItemTextField extends BatchDetailsEvent {}

class EnableItemTextField extends BatchDetailsEvent {}

class DisableLocationTextField extends BatchDetailsEvent {}

class ItemIsScanned extends BatchDetailsEvent {}

class LocationIsScanned extends BatchDetailsEvent {}

class ItemAndLocationIsNotScanned extends BatchDetailsEvent {}

class ItemScanError extends BatchDetailsEvent {}

class LocationScanError extends BatchDetailsEvent {}

class LoadPickingBatchDetails extends BatchDetailsEvent {
  final String pickingBatchId;
  const LoadPickingBatchDetails(this.pickingBatchId);
}

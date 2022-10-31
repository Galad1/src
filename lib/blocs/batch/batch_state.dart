part of 'batch_bloc.dart';

class BatchState extends Equatable {
  final List<PickingBatchSummary> myBatches;
  final List<PickingBatchSummary> allBatches;
  final bool isFetched;
  final int pageID;

  const BatchState({
    this.myBatches = const [],
    this.allBatches = const [],
    this.isFetched = false,
    this.pageID = 0,
  });

  BatchState copyWith(
      {List<PickingBatchSummary>? myBatches,
      List<PickingBatchSummary>? allBatches,
      bool? isFetched,
      int? pageID}) {
    return BatchState(
        myBatches: myBatches ?? this.myBatches,
        allBatches: allBatches ?? this.allBatches,
        isFetched: this.isFetched,
        pageID: pageID ?? this.pageID);
  }

  @override
  List<Object?> get props => [myBatches, allBatches, pageID, isFetched];
}

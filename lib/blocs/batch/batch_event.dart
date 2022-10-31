part of 'batch_bloc.dart';

@immutable
abstract class BatchEvent extends Equatable {
  const BatchEvent();

  @override
  List<Object> get props => [];
}

class LoadPickingBatches extends BatchEvent {}

class ChangeFromPage extends BatchEvent {
  final int pageID;
  const ChangeFromPage(this.pageID);

  @override
  List<Object> get props => [pageID];
}

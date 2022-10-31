import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCounter extends Cubit<int> {
  ProductCounter() : super(0);

  void incrementProductCounter() => emit(state + 1);
}

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  //incremnet
  void incrementCounter() {
    // addError(Exception("increment error!"), StackTrace.current);
    emit(state + 1);
  }

  //

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print("from counter cubit -> $change");
  }

  //on error
  @override
  void onError(Object error, StackTrace stackTrace) {
    print("Error from onError called  -> $error $stackTrace");
    super.onError(error, stackTrace);
  }
}

class SumCubit extends Cubit<int> {
  SumCubit() : super(0);

  //sum

  void addSumm() {
    int sum = 0;
    emit(sum += state + 8);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print("from SumCubit  -> $change");
  }
}

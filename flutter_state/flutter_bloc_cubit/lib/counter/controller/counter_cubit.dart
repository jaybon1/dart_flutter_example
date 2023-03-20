import 'package:bloc/bloc.dart';

// part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  // state 변수를 상속받는다
  CounterCubit() : super(0);

  void changeTo(int newCount) => emit(newCount);
}

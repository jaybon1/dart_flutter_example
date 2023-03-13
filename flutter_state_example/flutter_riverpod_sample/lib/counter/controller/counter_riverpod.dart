import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterRiverpod extends StateNotifier<int> {
  CounterRiverpod() : super(0);

  void changeTo(int newCount) => state = newCount;
}
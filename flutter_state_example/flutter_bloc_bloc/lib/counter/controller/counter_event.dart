part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterChangeWith extends CounterEvent {
  final int newCount;

  CounterChangeWith(this.newCount);
}


import 'dart:async';

class CounterController {
  final _counterStreamController = StreamController<int>();

  Stream<int> get counterStream => _counterStreamController.stream;

  void counterChangeWith(int newCount) {
    _counterStreamController.sink.add(newCount);
  }

  void dispose() {
    _counterStreamController.close();
  }
}
import 'dart:async';

abstract class CounterObserver {
  void update(int count);
}

class Counter {
  int _count = 0;
  final Set<CounterObserver> _observers = {};

  int get count => _count;

  void increment() {
    _count++;
    _notifyObservers();
  }

  void decrement() {
    _count--;
    _notifyObservers();
  }

  void addObserver(CounterObserver observer) {
    _observers.add(observer);
  }

  void removeObserver(CounterObserver observer) {
    _observers.remove(observer);
  }

  void _notifyObservers() {
    for (var observer in _observers) {
      observer.update(_count);
    }
  }
}

class ConsoleCounterObserver implements CounterObserver {
  static int CONSOLE_COUNTER = 0;

  late int observerNumber;

  ConsoleCounterObserver() {
    observerNumber = CONSOLE_COUNTER;
    CONSOLE_COUNTER++;
  }

  @override
  void update(int count) {
    print('Console Counter$observerNumber value: $count');
  }
}

class GUICounterObserver implements CounterObserver {
  static int GUI_COUNTER = 0;
  late int observerNumber;
  final StreamController<int> _controller = StreamController<int>.broadcast();

  GUICounterObserver() {
    observerNumber = GUI_COUNTER;
    _controller.stream
        .listen((count) => print('GUI counter$observerNumber value: $count'));
    GUI_COUNTER++;
  }

  Stream<int> get counterStream => _controller.stream;

  @override
  void update(int count) {
    _controller.add(count);
  }

  void dispose() {
    _controller.close();
  }
}

void main() {
  final counter = Counter();

  // Create observers
  final consoleObserver = ConsoleCounterObserver();
  final consoleObserver1 = ConsoleCounterObserver();
  final guiObserver = GUICounterObserver();
  final guiObserver1 = GUICounterObserver();

  // Add observers to counter
  counter.addObserver(consoleObserver);
  counter.addObserver(consoleObserver1);
  counter.addObserver(guiObserver);
  counter.addObserver(guiObserver1);

  // Increment counter and observe changes
  counter.increment();
  counter.increment();
  counter.increment();
  counter.decrement();

  // Remove observer from counter
  counter.removeObserver(consoleObserver);
  counter.removeObserver(consoleObserver1);

  // Clean up
  guiObserver.dispose();
  // Remove gui observer from counter
  counter.removeObserver(guiObserver);
  counter.removeObserver(guiObserver1);
}

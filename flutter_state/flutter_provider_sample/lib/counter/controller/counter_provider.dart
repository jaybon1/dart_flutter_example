

import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void changeTo(int newCount) {
    _count = newCount;
    notifyListeners();
  }

  // // DiagnosticableTreeMixin를 with에 추가하면 아래 코드를 사용할 수 있음
  // /// Makes `Counter` readable inside the devtools by listing all of its properties
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(IntProperty('count', count));
  // }
}
import 'package:get/get.dart';

class CounterGetx extends GetxController {
  int count = 0;

  static CounterGetx get to => Get.find();

  void changeTo(int newCount) {
    count = newCount;
    update();
  }
}
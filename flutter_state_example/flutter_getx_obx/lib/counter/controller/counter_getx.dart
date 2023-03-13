import 'package:get/get.dart';

class CounterGetx extends GetxController {
  final count = Rx<int>(0);

  static CounterGetx get to => Get.putOrFind(() => CounterGetx());
}
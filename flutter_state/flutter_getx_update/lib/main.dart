import 'package:flutter/material.dart';
import 'package:flutter_getx_update/counter/controller/counter_getx.dart';
import 'package:get/get.dart';

import 'counter/view/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Get.put(CounterGetx());

    return MaterialApp(
      title: 'getx Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(title: 'Counter'),
    );
  }
}

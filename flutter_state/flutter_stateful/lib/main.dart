import 'package:flutter/material.dart';
import 'package:flutter_stateful/counter/view/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    print("빌드");
    return MaterialApp(
      title: 'Stateful Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(title: 'Counter'),
    );
  }
}

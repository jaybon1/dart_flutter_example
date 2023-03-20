import 'package:flutter/material.dart';
import 'package:flutter_navigator_named/view/first_page.dart';
import 'package:flutter_navigator_named/view/fourth_page.dart';
import 'package:flutter_navigator_named/view/second_page.dart';
import 'package:flutter_navigator_named/view/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        '/fourth': (context) => const FourthPage(),
      },
      initialRoute: '/',
      // home: const FirstPage(), // routes 사용하면 사용안해도 됨
    );
  }
}

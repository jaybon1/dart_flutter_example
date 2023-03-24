import 'package:flutter/material.dart';
import 'package:flutter_navigator_named_v2_args/routes.dart';
import 'package:flutter_navigator_named_v2_args/view/first_page.dart';
import 'package:flutter_navigator_named_v2_args/view/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.first: (context) => const FirstPage(),
        Routes.second: (context) => const SecondPage(),
      },
      initialRoute: Routes.first,
    );
  }
}
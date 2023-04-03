import 'package:flutter/material.dart';
import 'package:flutter_attr_busan/attr_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AttrPage(),
    );
  }
}

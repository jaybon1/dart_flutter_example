import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Image.network("https://img.lostark.co.kr/profile/1/4C8B6F46F0A2054774E23DB4FA13FD8574A4ED9A3E6A916EE3FE02CA37D72B26.PNG"),
        ),
      ),
    );
  }
}

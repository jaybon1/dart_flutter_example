import 'package:flutter/material.dart';
import 'package:flutter_navigator_named_v2_args/routes.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('두번째 화면 열기\n(현재페이지 위로 열기)'),
              onPressed: () {
                Navigator.pushNamed(context, Routes.second, arguments: 'Hello').then((value) => print(value));
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigator_named_v2/routes.dart';

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
                Navigator.pushNamed(context, Routes.second);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('두번째 화면 열기\n(현재페이지를 교체해서 열기 )'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.second);
              },
            )
          ],
        ),
      ),
    );
  }
}

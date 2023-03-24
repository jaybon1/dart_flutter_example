import 'package:flutter/material.dart';
import 'package:flutter_navigator_named_v2/routes.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.first);
              },
              child: const Text('첫번째 화면 열기\n(현재페이지 위로 열기)'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (Route<dynamic> route) => route.isFirst);
              },
              child: const Text('두번째 화면 돌아가기\n(나머지 없애기)'),
            ),
          ],
        ),
      ),
    );
  }
}

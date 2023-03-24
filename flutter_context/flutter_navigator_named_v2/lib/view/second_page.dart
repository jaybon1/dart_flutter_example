import 'package:flutter/material.dart';
import 'package:flutter_navigator_named_v2/routes.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.third);
              },
              child: const Text('세번째 화면 열기\n(현재페이지 위로 열기)'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (!Navigator.canPop(context)) {
                  showToast(context, "현재 페이지가 마지막 남은 페이지 입니다.");
                  return;
                }
                Navigator.pop(context);
              },
              child: const Text('첫번째 화면 돌아가기\n(현재페이지 없애기)'),
            ),
          ],
        ),
      ),
    );
  }
}

void showToast(BuildContext context, String message) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

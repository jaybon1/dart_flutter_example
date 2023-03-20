import 'package:flutter/material.dart';
import 'first_page.dart';
import 'fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FourthPage(),
                  ),
                );
              },
              child: const Text('네번째 화면 열기\n(현재페이지 위로 열기)'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstPage(),
                  ),
                );
              },
              child: const Text('첫번째 화면 열기\n(현재페이지 위로 열기)'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text('첫번째 화면 열기\n(나머지 페이지 다 지우기)'),
            ),
          ],
        ),
      ),
    );
  }
}

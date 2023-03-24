import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v1/routes.dart';
import 'package:go_router/go_router.dart';

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
              child: const Text('첫번째 상세 화면 열기\n(extra)'),
              onPressed: () {
                context
                    .pushNamed(Routes.firstDetail);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('두번째 화면 열기\n(extra)'),
              onPressed: () {
                context
                    // .pushNamed(Routes.second, extra: 'hello')
                    .goNamed(Routes.second, extra: 'hello');
                    // .then((value) => print(value));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('세번째 화면 열기\n(params)'),
              onPressed: () {
                context.pushNamed(Routes.third, queryParams: {
                  'message': 'hello'
                }).then((value) => print(value));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('네번째 화면 열기\n(queryParams)'),
              onPressed: () {
                context.pushNamed(Routes.fourth,
                    params: {'message': 'hello'}).then((value) => print(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}

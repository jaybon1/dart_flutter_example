import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// 이 페이지를 바로 열 경우 arguments가 null이 됨
class FirstDetailPage extends StatelessWidget {
  const FirstDetailPage({super.key});

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () {
        // Navigator.pop(context, "전 페이지로 보낼 데이터");
        context.pop("전 페이지로 보낼 데이터");
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('First Detail Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('first detail page'),
            ],
          ),
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

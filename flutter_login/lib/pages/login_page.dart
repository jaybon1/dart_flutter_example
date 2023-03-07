import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_form.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_login/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: xlargeGap),
            const Logo("Login"),
            const SizedBox(height: largeGap), // 1. 추가
            CustomForm(), // 2. 추가
          ],
        ),
      ),
    );
  }
}

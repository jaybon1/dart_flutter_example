import 'package:flutter/material.dart';
import 'package:flutter_http/post/view/post_detail_page.dart';
import 'package:flutter_http/post/view/post_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const PostListPage(),
        '/detail': (context) => const PostDetailPage(),
      },
      initialRoute: '/',
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_http_1_complete/post/controller/post_table_controller.dart';
import 'package:flutter_http_1_complete/post/view/pages/list_page.dart';
import 'package:flutter_http_1_complete/routes.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostTableController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.goRouter,
    );
  }
}

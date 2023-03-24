// 라우팅을 하드코딩이 아니라 상수로 관리하면
// 나중에 라우팅을 변경할 때 편리하다.

import 'package:flutter/material.dart';
import 'package:flutter_gorouter_v1/view/first_detail_page.dart';
import 'package:flutter_gorouter_v1/view/first_page.dart';
import 'package:flutter_gorouter_v1/view/fourth_page.dart';
import 'package:flutter_gorouter_v1/view/second_page.dart';
import 'package:flutter_gorouter_v1/view/third_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String first = 'first';
  static const String firstDetail = 'firstDetail';
  static const String second = 'second';
  static const String third = 'third';
  static const String fourth = 'fourth';

  static final GoRouter goRouter = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: "/first",
    routes: [
      GoRoute(
          name: Routes.first,
          path: "/first",
          builder: (context, state) => const FirstPage(),
          routes: [
            GoRoute(
              name: Routes.firstDetail,
              path: "detail",
              builder: (context, state) => const FirstDetailPage(),
            ),
          ]
      ),
      GoRoute(
        name: Routes.second,
        path: "/second",
        builder: (context, state) => SecondPage(
          message: state.extra as String?,
        ),
      ),
      GoRoute(
        name: Routes.third,
        path: "/third",
        builder: (context, state) => ThirdPage(
          message: state.queryParams['message'],
        ),
      ),
      GoRoute(
        name: Routes.fourth,
        path: "/fourth/:message",
        builder: (context, state) => FourthPage(
          message: state.params['message'],
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
}

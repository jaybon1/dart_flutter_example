
import 'package:flutter/material.dart';
import 'package:flutter_http_1_complete/post/view/pages/detail_page.dart';
import 'package:flutter_http_1_complete/post/view/pages/list_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String postTable = 'postTable';
  static const String postDetail = 'postDetail';

  static final GoRouter goRouter = GoRouter(
    navigatorKey: GlobalKey<NavigatorState>(),
    initialLocation: "/post",
    routes: [
      GoRoute(
        name: Routes.postTable,
        path: "/post",
        builder: (context, state) => ListPage(),
        routes: [
          GoRoute(
            name: Routes.postDetail,
            path: ":postId",
            builder: (context, state) {
              return DetailPage(postId: int.parse(state.params["postId"]!),);
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Error: ${state.error}'),
      ),
    ),
  );
}

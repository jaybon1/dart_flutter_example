// list_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_1_complete/post/controller/post_table_controller.dart';
import 'package:flutter_http_1_complete/post/view/widgets/post_table_shimmer_widget.dart';
import 'package:flutter_http_1_complete/post/view/widgets/post_table_widget.dart';
import 'package:flutter_http_1_complete/utils.dart';
import 'package:provider/provider.dart';

class ListPage extends HookWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<PostTableController>();

    useEffect(() {
      controller.setPostDTOTableList(
          () => Utils.showAlertDialog(context, "알림", "데이터를 가져오는데 실패했습니다."));
    }, []);

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            controller.setPostDTOTableList(() =>
                Utils.showAlertDialog(context, "알림", "데이터를 가져오는데 실패했습니다."));
          },
          child: ListView(
            children: controller.postDTOTableList
                    ?.map((e) => PostTableWidget(postDTOTable: e))
                    .toList() ??
                List.generate(10, (index) => PostTableShimmerWidget()),
          ),
        ),
      ),
    );
  }
}

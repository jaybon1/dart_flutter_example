// list_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_1_complete/post_dto.dart';
import 'package:flutter_http_1_complete/post_repository.dart';

class ListPage extends HookWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState = useState<List<PostDTOTable>?>(null);
    useEffect(() {
      PostRepository.instance.getDTOList().then((value){
        listState.value = value;
      });
    }, []);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: listState.value?.map((e) => ListItem(postDTOTable: e)).toList() ?? [],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  PostDTOTable postDTOTable;

  ListItem({Key? key, required this.postDTOTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        children: [
          Text("유저번호 : ${postDTOTable.userId}"),
          Divider(),
          Text("글 번호 : ${postDTOTable.id}"),
          Divider(),
          Text("글 제목 : ${postDTOTable.title}"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_http_1_complete/post/model/dto/post_dto.dart';
import 'package:flutter_http_1_complete/routes.dart';
import 'package:go_router/go_router.dart';

class PostTableWidget extends StatelessWidget {
  PostDTOTable postDTOTable;

  PostTableWidget({Key? key, required this.postDTOTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       context.pushNamed(Routes.postDetail, params: {"postId": postDTOTable.id.toString()});
      },
      child: Container(
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
      ),
    );
  }
}
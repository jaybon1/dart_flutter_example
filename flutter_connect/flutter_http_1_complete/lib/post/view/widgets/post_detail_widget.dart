
import 'package:flutter/material.dart';
import 'package:flutter_http_1_complete/post/model/dto/post_dto.dart';

class PostDetailWidget extends StatelessWidget {
  final PostDTODetail postDTODetail;
  const PostDetailWidget({Key? key, required this.postDTODetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("글번호 : ${postDTODetail.id} /  유저번호 : ${postDTODetail.userId} "),
          const Divider(),
          Text("제목 : ${postDTODetail.title}"),
          const Divider(),
          Text("내용 : ${postDTODetail.body}"),
        ],
      ),
    );
  }
}

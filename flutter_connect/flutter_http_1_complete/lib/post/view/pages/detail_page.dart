// detail_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_1_complete/post/model/dto/post_dto.dart';
import 'package:flutter_http_1_complete/post/model/repository/post_repository.dart';
import 'package:flutter_http_1_complete/post/view/widgets/post_detail_shimmer_widget.dart';
import 'package:flutter_http_1_complete/post/view/widgets/post_detail_widget.dart';

class DetailPage extends HookWidget {
  final int postId;

  const DetailPage({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailState = useState<PostDTODetail?>(null);

    useEffect(() {
      PostRepository.instance.getDTO(postId).then((value) {
        detailState.value = value;
      });
    }, []);

    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () {
            Navigator.pop(context, "테이블로 보낼 데이터");
            return Future.value(true);
          },
          child: Scaffold(
            appBar: AppBar(),
            body: SafeArea(
              child: detailState.value != null
                  ? PostDetailWidget(postDTODetail: detailState.value!)
                  : const PostDetailShimmerWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

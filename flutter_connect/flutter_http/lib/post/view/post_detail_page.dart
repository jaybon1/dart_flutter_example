import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http/post/model/dto/post_res_dto.dart';
import 'package:flutter_http/post/model/repository/post_repository.dart';

class PostDetailPage extends HookWidget {
  const PostDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // 이전 페이지에서 보낸 값을 받는다.
    var args = ModalRoute.of(context)?.settings.arguments;

    final postResDTODetailState = useState<PostResDTODetail?>(null);

    useEffect(() {
      // 이전페이지에서 값을 보내지 않았거나
      // 잘못된 접근을 하였을 경우
      if (args == null) return;
      final argsMap = args as Map;

      PostRepository.getInstance.getPostDTODetail(argsMap["id"]).then((value) {
        postResDTODetailState.value = value;
      });
      return null;
    }, []);

    final Widget childWidget;

    if (args == null) {
      childWidget = const Center(
          child: Text("관리자에게 문의 하세요.", style: TextStyle(fontSize: 50)));
    } else if (postResDTODetailState.value == null) {
      childWidget =
          const Center(child: Text("로딩 중...", style: TextStyle(fontSize: 50)));
    } else {
      final e = postResDTODetailState.value!;

      childWidget = Center(
        child: Column(
          children: [
            Text("글번호 : ${e.id} /  유저번호 : ${e.userId} "),
            const Divider(),
            Text("제목 : ${e.title}"),
            const Divider(),
            Text("내용 : ${e.body}"),
          ],
        ),
      );
    }

    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, "테이블로 보낼 데이터");
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: childWidget,
        ),
      ),
    );
  }
}

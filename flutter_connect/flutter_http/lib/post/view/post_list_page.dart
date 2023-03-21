import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http/post/model/dto/post_res_dto.dart';
import 'package:flutter_http/post/model/repository/post_repository.dart';

// 페이지 내부 상태 관리를 위한 HookWidget
class PostListPage extends HookWidget {
  const PostListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 상태 - 통신 데이터 유무 판단.
    // 데이터를 외부 페이지에서도 사용할 경우
    // Provider 등으로 전역관리한다.
    final postResDTOTableListState = useState<List<PostResDTOTable>?>(null);

    // 페이지가 빌드 된 이후 작동
    useEffect(() {
      // 통신해서 데이터를 가져온다.
      PostRepository.getInstance.getPostTableDTOList().then((value) {
        postResDTOTableListState.value = value;
      });
      // useEffect 종료시 작동할 함수를 정의한다.
      return null;
    }, []); // 대괄호에는 모니터링할 상태를 적는다.

    // 호출 확인용
    // 대괄호에 상태를 넣어서 비교해본다.
    useEffect(() {
      print("useEffect호출됨 ${Random().nextInt(100)}");
    }, [postResDTOTableListState.value]);

    // 상태에 따라 보여줄 위젯을 선언
    final Widget childWidget;

    if (postResDTOTableListState.value == null) {
      // 상태값이 null이면
      childWidget =
          const Center(child: Text("로딩 중...", style: TextStyle(fontSize: 50)));
    } else {
      // 값이 있으면
      childWidget = ListView(
        children: postResDTOTableListState.value!.map((e) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: InkWell(
                onTap: () async {
                  // 페이지 이동시 값을 넘겨준다. arguments
                  // .then을 이용해서 페이지가 꺼지는 타이밍을 기다리거나
                  // 값을 반환 받을 수 있다.
                  Navigator.pushNamed(context, '/detail',
                      arguments: {"id": e.id}).then((value) {
                    print('Returned from new page');
                    print(value);
                  });
                },
                child: Column(
                  children: [
                    Text("글번호 : ${e.id} /  유저번호 : ${e.userId} "),
                    const Divider(),
                    Text("제목 : ${e.title}"),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: childWidget,
      ),
    );
  }
}

// second_page.dart

import 'package:flutter/material.dart';

// 받아온 리스트데이터를 필터링해서 변경
// 1 필터링(where) / 2 변경(map)
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 받아온 데이터
    List<String> strList = ["apple", "google", "naver"];

    // a라는 글자가 들어간 str만 필터링 하고 싶음
    // Text위젯 리스트로 만들고 싶음

    // String을 받아서 a가 들어있는지 확인해서
    // 있으면 true / 없으면 false를 리턴하는 함수
    final filter = (String str){
      return str.contains("a");
    };

    // String을 Widget으로 변경하는 함수
    // 같은 Widget를 리스트로 사용해서 출력할 경우
    // key를 넣어 줘야 한다.
    final change = (String str) {
      return Text(str, key: UniqueKey(),);
    };

    List<Widget> widgetList = strList.where(filter).map(change).toList();


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: widgetList,
        ),
      ),
    );
  }
}

// post_repository.dart
import 'dart:convert';
import 'package:flutter_http_1_complete/post_dto.dart';
import 'package:http/http.dart' as http;

class PostRepository{
  // 싱글톤 - 해당 타입의 객체가 프로그램에서 단 1개
  // 스태틱 변수 선언
  static PostRepository? _instance;

  // 퍼블릭 생성자 제거
  // dart에서 private은 맨 앞에 언더바를 붙인다
  PostRepository._();

  // 싱글톤 객체 getter
  static PostRepository get instance => _instance ??= PostRepository._();

  // 통신은 실패할 수 있다 == nullable
  Future<List<PostDTOTable>?> getDTOList() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return PostDTOTable.fromJsonList(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}




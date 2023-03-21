import 'dart:convert';

import 'package:flutter_http/post/model/dto/post_res_dto.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  // 싱글톤
  // 스태틱 변수 선언
  static PostRepository? _instance;

  // private 생성자를 만들어서
  // 기본 public 생성자를 사용하지 못하게 함
  PostRepository._();

  // getter로 인스턴스를 반환
  // _instance가 null 일 경우 _instance에 객체를 생성해서 대입한 후 리턴
  static PostRepository get getInstance => _instance ??= PostRepository._();

  // 통신 결과는 언제 올지 모르기 때문에
  // 비동기 통신인 Future를 사용한다.
  Future<List<PostResDTOTable>?> getPostTableDTOList() async {
    // url 주소설정
    const String url = "https://jsonplaceholder.typicode.com/posts";
    // 통신하여 받아옴
    final response = await http.get(Uri.parse(url));
    // 응답이 200이면
    if (response.statusCode == 200) {
      // // dto를 리턴 (Future로)
      // final List jsonList = response.body as List;
      // final List<PostResDTOTable> postResDTOTableList = jsonList.map((e) {
      //   final Map<String, dynamic> map = e as Map<String, dynamic>;
      //   return PostResDTOTable.fromMap(map);
      // }).toList();
      
      // 위 코드를 압축하면 아래와 같음
      return (jsonDecode(response.body) as List).map((e) => PostResDTOTable.fromMap(e)).toList();
    } else {
      return null;
    }
  }

  Future<PostResDTODetail> getPostDTODetail(int id) async {
    final String url = "https://jsonplaceholder.typicode.com/posts/$id";
    final response = await http.get(Uri.parse(url));
    return PostResDTODetail.fromMap(jsonDecode(response.body));
  }
}

// post_repository.dart
import 'dart:convert';
import 'package:flutter_http_1_complete/post/model/dto/post_dto.dart';
import 'package:http/http.dart' as http;

class PostRepository{
  static PostRepository? _instance;

  PostRepository._();

  static PostRepository get instance => _instance ??= PostRepository._();

  Future<List<PostDTOTable>?> getDTOList() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return PostDTOTable.fromJsonList(jsonDecode(response.body));
    } else {
      return null;
    }
  }

  Future<PostDTODetail?> getDTO(int postId) async {
    String url = "https://jsonplaceholder.typicode.com/posts/$postId";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return PostDTODetail.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}




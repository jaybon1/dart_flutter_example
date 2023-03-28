// post_dto.dart

// 테이블 용
class PostDTOTable {
  int userId; // 유저 번호
  int id; // 글 번호
  String title; // 제목
  // 생성자
  PostDTOTable({
    required this.userId,
    required this.id,
    required this.title,
  });

  // 생성자를 이용한 팩토리 함수
  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  // 팩토리를 이용한 함수
  static List<PostDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => PostDTOTable.fromJson(json)).toList();
  }
}

// 상세 페이지 용
class PostDTODetail {
  int userId; // 유저 번호
  int id; // 글 번호
  String title; // 제목
  String body;

  PostDTODetail(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body}); // 내용
}

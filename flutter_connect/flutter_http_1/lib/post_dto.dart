// post_dto.dart

// 테이블 용
class PostDTOTable {
  int userId; // 유저 번호
  int id; // 글 번호
  String title; // 제목

  PostDTOTable({required this.userId, required this.id, required this.title});
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

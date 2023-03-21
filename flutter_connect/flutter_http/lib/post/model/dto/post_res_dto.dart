// 다트는 이너클래스가 없음

// 작명
// 테이블명 + 요청/응답 + DTO + 용도
// Post + Req/Res + DTO + Table/Detail
class PostResDTOTable {
  // 값 대입 후 바뀔 필요가 없으면 final
  final int userId;
  final int id;
  final String title;

  // 생성자
  PostResDTOTable({
    required this.userId,
    required this.id,
    required this.title,
  });

  // 팩토리 생성자
  // 팩토리 생성자는 해당 클래스 타입의 객체를 리턴해줄 때
  // 여러가지 방식을 사용할 수 있도록 해준다.
  // 아래는 map데이터를 받아서 객체를 생성.
  factory PostResDTOTable.fromMap(Map<String, dynamic> map) => PostResDTOTable(
        userId: map["userId"],
        id: map["id"],
        title: map["title"],
      );
}

class PostResDTODetail {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostResDTODetail({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostResDTODetail.fromMap(Map<String, dynamic> map) =>
      PostResDTODetail(
        userId: map["userId"],
        id: map["id"],
        title: map["title"],
        body: map["body"],
      );
}

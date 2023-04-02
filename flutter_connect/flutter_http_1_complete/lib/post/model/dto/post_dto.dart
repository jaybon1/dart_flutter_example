// post_dto.dart

class PostDTOTable {
  int userId;
  int id;
  String title;

  PostDTOTable({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory PostDTOTable.fromJson(dynamic json) => PostDTOTable(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  static List<PostDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => PostDTOTable.fromJson(json)).toList();
  }
}

class PostDTODetail {
  int userId;
  int id;
  String title;
  String body;

  PostDTODetail(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory PostDTODetail.fromJson(dynamic json) => PostDTODetail(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );
}

class AttrDTO {
  // MAIN_TITLE
  // CNTCT_TEL
  // MAIN_IMG_THUMB

  String mainTitle;
  String cntctTel;
  String mainImgThumb;

  AttrDTO({
    required this.mainTitle,
    required this.cntctTel,
    required this.mainImgThumb,
  });

  factory AttrDTO.fromJson(dynamic json) => AttrDTO(
        mainTitle: json["MAIN_TITLE"],
        cntctTel: json["CNTCT_TEL"],
        mainImgThumb: json["MAIN_IMG_THUMB"],
      );

  static List<AttrDTO> fromJsonList(List jsonList){
    return jsonList.map((e) => AttrDTO.fromJson(e)).toList();
  }
}









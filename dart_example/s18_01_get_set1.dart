class TempDTO {
  int _count = 0;
  String memo = "";

  int get count {
    print("가져오는 중");
    return _count;
  }

  set count(int value) {
    print("세팅 중");
    _count = value;
  }
}

void main() {
  var temp = TempDTO();
  temp.count = 10;
  print(temp.count);

  // 가공이 필요 없는 데이터는 그냥 사용하면 된다.
  temp.memo = "메모";
}

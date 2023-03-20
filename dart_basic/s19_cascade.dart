/*

  케스케이드 표기법

*/

class Cat {
  String? name;
  int? age;
  String? color;
}

void main(List<String> args) {
  // 일반 방식
  Cat cat1 = Cat();
  cat1.name = "Whiskers";
  cat1.age = 5;
  cat1.color = "gray";

  // 케스케이드 표기법
  Cat cat2 = Cat()
    ..name = "Whiskers"
    ..age = 5
    ..color = "gray";
}

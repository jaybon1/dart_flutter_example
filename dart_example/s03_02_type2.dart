/*

  Dart의 집합 자료형

  https://dart.dev/guides/language/language-tour#lists
  https://dart.dev/guides/language/language-tour#maps
  https://dart.dev/guides/language/language-tour#sets

  List : 배열 (value)
  Map : 해시테이블 (key, value)
  Set : 집합 (key)

  List 선언 예시
  List<int> exampleList1 = [1, 2, 3];
  List exampleList3 = <int>[1, 2, 3];
  List exampleList2 = [1, 2, 3]; // JS와 비슷
  List exampleList4 = [1, 3.14, "안녕", true]; // List<dynamic>

  내용 변경
  exampleList1[0] = 10;
  exampleList1.add(11);

  Map 선언 예시
  Map<String, int> exampleMap1 = {"a": 1, "b": 2, "c": 3};
  Map exampleMap2 = <String, int>{"a": 1, "b": 2, "c": 3};
  Map exampleMap3 = {"a": 1, "b": 2, "c": 3};
  Map exampleMap4 = {1: 1, true: "dd"}; // Map<dynamic,dynamic>

  내용 변경
  exampleMap1["a"] = 10;
  exampleMap1["d"] = 11;

  Set 선언 예시
  Set<int> exampleSet1 = {1, 2, 3};
  Set exampleSet2 = <int>{1, 2, 3};
  Set exampleSet3 = {1, 2, 3};
  Set exampleSet4 = {1, "dd", true}; // Set<dynamic>

  내용 변경
  exampleSet1.add(11);

 */

void main(List<String> args) {
  // 문제 1. List 변수 tempIntList를 선언하고 [4, 5, 6]을 대입하고 출력하시오.

  // 문제 2. Map 변수 tempIntMap을 선언하고 {"a": 1, "b": 2, "c": 3}을 대입하고 출력하시오.

  // 문제 3. Set 변수 tempIntSet을 선언하고 {1, 2, 3}을 대입하고 출력하시오.
}

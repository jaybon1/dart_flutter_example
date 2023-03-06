/*
  스프레드 연산자

  스프레드 연산자는 리스트, 맵, 셋을 펼칠 때 사용한다.

  ...을 이용해서 exampleList의 요소들을 exampleList2에 추가할 수 있다.
  List exampleList = [1, 2, 3];
  List exampleList2 = [4, 5, 6, ...exampleList];
  결과 : [4, 5, 6, 1, 2, 3]

  ...?을 이용해서 exampleList이 null이 아닐 때만 
  exampleList의 요소들을 exampleList2에 추가할 수 있다.
  List? exampleList = null;
  List exampleList2 = [4, 5, 6, ...?exampleList];
  결과 : [4, 5, 6]

 */

void main(List<String> args) {
  const List tempList1 = [4, 5, 6];
  // 문제 1. 스프레드 연산자를 이용해서 아래 리스트에 tempList1을 추가하시오.
  // List tempList2 = [1. 2, 3];
}

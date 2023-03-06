/*
  if 문은 조건에 따라 코드를 실행하거나 실행하지 않을 수 있다.
  if (condition) {
    // code
  } else {
    // code
  }

  다트에서는 if 문을 이용해서 변수에 값을 할당할 수 있다.
  bool isTrue = true;
  var a = [1, 2, if (isTrue) 3];

 */

import 'dart:math';

void main(List<String> args) {
  int tempNum = Random().nextInt(2);

  // 문제 1. tempNum이 0이면 아래 리스트에 7을 추가하시오.
  List tempList = [4, 5, 6];
  print(tempList);
}

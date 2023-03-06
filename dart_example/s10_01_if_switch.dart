/*

  https://dart.dev/guides/language/language-tour#if-and-else
  https://dart.dev/guides/language/language-tour#switch-and-case

  if 문은 조건에 따라 코드를 실행하거나 실행하지 않을 수 있다.
  if (condition) {
    
  } else if (condition) {

  } else {
    
  }

  다트에서는 if 문을 이용해서 변수에 값을 할당할 수 있다.
  bool isTrue = true;
  var a = [1, 2, if (isTrue) 3];



  switch 문은 조건에 따라 코드를 실행할 수 있다.

  switch (condition) {
    case value:
      // code
      break;
    case value:
      // code
      break;
    default:
      // code
      break;
  }

  fall through를 원한다면 라벨과 continue를 사용하면 된다.

  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      continue nowClosed;
    // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }

 */

import 'dart:math';

void main(List<String> args) {
  int tempNum = Random().nextInt(2);

  // 문제 1. tempNum이 0이면 아래 리스트에 7을 추가하시오.
  List tempList = [4, 5, 6];
  print(tempList);
}

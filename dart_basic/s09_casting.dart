/*

  타입 캐스팅
  const Object tempObject = 10;
  tempObject as int

  타입 확인
  if (tempObject is int) {
    print("tempObject is int");
  }

  if (tempObject is! int) {
    print("tempObject is not int");
  }

  tempObject.runtimeType;
  
*/

class Human {
  // 인간
  void say() {
    print("안녕");
  }
}

class WereWolf extends Human {
  // 늑대인간
  void howl() {
    print("어흥");
  }
}

void main(List<String> args) {
  Human jackman = WereWolf();

  // 문제 1. jackman 객체의 say(), howl() 메소드를 호출하시오.

  // 문제 2. jackman 객체의 타입을 WereWolf타입으로 캐스팅하고, howl() 메소드를 호출하시오.
}

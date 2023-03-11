/*

  Dart의 static은 클래스 변수와 클래스 메소드를 선언할 때 사용한다.
  
  클래스 변수 및 메소드는,

  인스턴스의 메소드 및 변수와는 다르게 클래스 이름으로 접근한다.

  아래 고양이 클래스를 예로 들면,

  고양이는 고양이가 생성될 때마다 증가하는 catCount를 가지고 있다.

  그리고 고양이가 생성될 때마다 catCount를 출력하는 printCatCount() 메소드를 가지고 있다.

  이때, catCount와 printCatCount()는 고양이의 인스턴스가 아닌 고양이 클래스에 속한다.

  catCount와 printCatCount()는 고양이의 특성이 아닌, 전지적 3인칭 시점에서 고양이를 설명하는 것이다.

  class Cat {
    static int catCount = 0;

    static void printCatCount() {
      print("생성된 고양이는 $catCount 마리입니다.");
    }

    Cat() {
      catCount++;
    }
  }

*/

// 문제 1. static dogCount, printDogCount를 포함한 Dog 클래스를 작성하시오.

void main(List<String> args) {
  // 문제 2. Dog 클래스를 이용하여 myDog 객체를 생성하시오.

  // 문제 3. Dog 클래스를 이용하여 myDog2 객체를 생성하시오.

  // 문제 4. Dog 클래스의 printDogCount() 메소드를 호출하시오.
}

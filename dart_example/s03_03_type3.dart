/*

  Dart의 클래스

  클래스는 객체를 생성하기 위한 틀이다.

  Dart의 클래스는 아래와 같이 작성한다.

  class 클래스명 {
    // 필드
    // 생성자
    // 메소드
  }


  고양이 클래스를 작성해보자.
  class Cat {
    String name;
    int age;
    String color;

    Cat(this.name, this.age, this.color);

    void meow() {
      print("$name says meow!");
    }

    void sleep() {
      print("$name is sleeping.");
    }

    void eat(String food) {
      print("$name is eating $food.");
    }
  }

  클래스를 인스턴스화 할 때
  자바처럼 new를 사용해도 되고 new 없이 생성해도 된다.

  void main() {
    Cat myCat = Cat("Whiskers", 5, "gray");
    myCat.meow(); // prints "Whiskers says meow!"
    myCat.sleep(); // prints "Whiskers is sleeping."
    myCat.eat("tuna"); // prints "Whiskers is eating tuna."
  }

 */

// 문제 1. Dog 클래스를 작성하시오.

void main(List<String> args) {
  // 문제 2. Dog 클래스를 이용하여 myDog 객체를 생성하시오.
  // 문제 3. myDog 객체의 bark() 메소드를 호출하시오.
  // 문제 4. myDog 객체의 sleep() 메소드를 호출하시오.
  // 문제 5. myDog 객체의 eat() 메소드를 호출하시오.
}

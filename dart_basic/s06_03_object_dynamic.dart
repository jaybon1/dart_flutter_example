/*

  Dart의 Object와 dynamic

  Object : 모든 객체의 최상위 클래스 (모든 타입은 Object를 상속한다.)
  dynamic : 모든 타입을 허용

  Object 선언 예시
  Object exampleObject1 = 1;

  dynamic 선언 예시
  dynamic exampleDynamic1 = 1;

  object와 dynamic은 타입 지정 후에도 다른 타입의 값을 대입할 수 있다.
  Object exampleObject1 = 1;
  exampleObject1 = "aaa";

  dynamic exampleDynamic1 = 1;
  exampleDynamic1 = "bbb";
  
  평소에 Object?를 쓸 일이 있다면 dynamic을 사용하자.

*/

void main(List<String> args) {
  // 문제 1. Object를 이용해서 정수형 변수 tempObject를 선언하고 10을 대입하고 출력하시오.

  // 문제 2. tempObject에 문자열 "오전"을 대입하고 출력하시오.

  // 문제 3. dynamic을 이용해서 정수형 변수 tempDynamic을 선언하고 10을 대입하고 출력하시오.

  // 문제 4. tempDynamic에 문자열 "오후"를 대입하고 출력하시오.
}

/*
  
  다트의 상수와 final 키워드
  const는 컴파일 시점에 상수로 변환되고, final은 런타임 시점에 상수로 변환된다.

  컴파일 시점이라는 것은 프로그램이 실행되기 전에 컴파일러가 코드를 분석하고 변환하는 시점을 말한다.

  런타임 시점이라는 것은 프로그램이 실행되는 동안에 작동되는 시점을 말한다.

  const의 장점은 컴파일 시점에 상수로 변환되기 때문에 런타임 시점에 상수로 변환되는 final보다 빠르다는 것이다.

  타입 선언 시

  const String exampleString1 = "Hello World";
  const exampleString1 = "Hello World";

  final String exampleString1 = "Hello World";
  final exampleString1 = "Hello World";

  키워드 const는 단지 상수 변수를 선언하기 위한 것이 아님.
  어떠한 변수도 const 키워드를 이용해서 선언할 수 있음.
  List zzz = const [1,2,3];
  var foo = const [1,2,3];
  final bar = const [1,2,3];
  const baz = [1,2,3];

  이 네가지는 내부를 변경할 수 없는 상수 리스트가 됨.
  그러나 차이점이 있다.

  List exampleList0 = const [1, 2, 3];
  exampleList0 = const [9, 8, 7];
  exampleList0는 다른 상수 값을 대입할 수 있음.
  (const [1, 2, 3], const [9, 8, 7] 등은 이미 컴파일시에 상수로 변환)
  (but List 타입인 다른 변수를 넣을 수 있음.)

  var exampleList1 = const [1, 2, 3];
  exampleList1 = const [9, 8, 7];
  exampleList1는 var 타입이기 때문에 다른 상수 값을 대입할 수 있음.
  (const [1, 2, 3], const [9, 8, 7] 등은 이미 컴파일시에 상수로 변환)
  (but 추론된 List 타입인 다른 변수를 넣을 수 있음.)

  위 내용은
  int exampleInt = 1; 을
  exampleInt = 2; 로 다시 대입할 수 있는 것과 같음.
  숫자 1, 2, 3 등은 이미 상수임.

  final exampleList2 = const [1, 2, 3];
  exampleList2 = const [9, 8, 7]; // 에러 발생
  exampleList2는 final 타입이기 때문에 다른 상수 값을 대입할 수 없음.
  (const [1, 2, 3], const [9, 8, 7] 등은 이미 컴파일시에 상수로 변환)
  (final로 선언했기 때문에 다른 변수를 넣을 수 없음.)

  const exampleList3 = [1, 2, 3];
  exampleList3 = [9, 8, 7]; // 에러 발생
  exampleList3는 const 타입이기 때문에 다른 상수 값을 대입할 수 없음.
  (const exampleList3 = [1, 2, 3]는 컴파일시에 이미 상수인 상태)


 */

void main(List<String> args) {
  // 문제 1. final을 이용해서 List형 상수 tempList2를 선언하고 4, 5, 6을 대입하고 출력하시오.

  // 문제 2. tempList2에 .add 메소드를 이용해서 7을 추가하고 출력하시오.

  // 문제 3. const를 이용해서 List형 상수 tempList1를 선언하고 4, 5, 6을 대입하고 출력하시오.

  // 문제 4. tempList1에 .add 메소드를 이용해서 7을 추가하고 출력하시오.

  // 문제 5. var를 이용해서 tempList3를 선언하고 const [4, 5, 6]을 대입하고 출력하시오.

  // 문제 6. tempList3에 .add 메소드를 이용해서 7을 추가하고 출력하시오.
}

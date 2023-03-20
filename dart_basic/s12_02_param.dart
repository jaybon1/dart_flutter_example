/*

  함수의 매개변수 세팅

  https://dart.dev/guides/language/language-tour#parameters

  필수 매개변수
  - a와 b 둘다 모두 들어가야 함.

  void add(int a, int b) {
    print(a + b);
  }

  선택적 위치 매개변수 (Optional positional parameters)
  선택 값은 []로 감싸고, 매개변수 뒤에 ?를 붙인다.
  기본 값을 넣을 수 있다.

  void add(int a, [int? b]) {
    print(a + (b == null ? 0 : b));
  }

  void add(int a, [int b = 0]) {
    print(a + b);
  }

  명명된 매개변수 (named parameter)
  명명된 값은 {}로 감싼다.
  required 키워드를 사용하면 필수 값으로 만들 수 있다.
  기본 값을 넣을 수 있다.
  파라미터를 주입할 때 이름을 지정해서 넣어야한다.

  void add(int a, {required int b}) {
    print(a + b);
  }

  void add(int a, {int? b}) {
    print(a + (b == null ? 0 : b));
  }

  void add(int a, {required int? b}) {
    print(a + (b == null ? 0 : b));
  }

  void add(int a, {int b = 0}) {
    print(a + b);
  }

 */

void add1(int a, int b) {
  print(a + b);
}

void add2(int a, [int? b]) {
  print(a + (b == null ? 0 : b));
}

void add3(int a, [int b = 0]) {
  print(a + b);
}

void add4(int a, {required int b}) {
  print(a + b);
}

void add5(int a, {int? b}) {
  print(a + (b == null ? 0 : b));
}

void add6(int a, {int b = 0}) {
  print(a + b);
}

void main(List<String> args) {
  // 문제 1. add1 함수를 호출하시오.

  // 문제 2. add2 함수를 호출하시오.

  // 문제 3. add3 함수를 호출하시오.

  // 문제 4. add4 함수를 호출하시오.

  // 문제 5. add5 함수를 호출하시오.

  // 문제 6. add6 함수를 호출하시오.
}

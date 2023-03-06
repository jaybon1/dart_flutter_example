/* 

  팩토리 생성자

  항상 자신의 새 인스턴스를 만들지 않는 생성자를 구현할 때 factory를 사용.
  예를 들어 팩토리 생성자는 캐싱된 인스턴스를 반환하거나 하위 유형의 인스턴스를 반환.

*/

class MyClass {
  final String name;

  const MyClass(this.name);

  factory MyClass.fromName(String name) {
    if (name == 'foo') {
      return FooClass();
    } else if (name == 'bar') {
      return BarClass();
    } else {
      return MyClass(name);
    }
  }
}

class FooClass extends MyClass {
  const FooClass() : super('foo');
}

class BarClass extends MyClass {
  const BarClass() : super('bar');
}

void main(List<String> args) {
  var myObj1 = MyClass('test');
  var myObj2 = MyClass.fromName('foo');

  print(myObj2 as FooClass);
}

/*

  명명된 생성자

  class Point {
    final double x;
    final double y;

    Point(this.x, this.y);

    // Named constructor
    Point.origin()
        : x = xOrigin,
          y = yOrigin;
  }

 */

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  // Named constructor
  Point.origin()
      : x = 0,
        y = 0 {
    print('x = $x, y = $y');
  }
}

void main(List<String> args) {
  // var point1 = Point(); // 오류 발생
  var point2 = Point.origin();

  // 실행해보기.
}

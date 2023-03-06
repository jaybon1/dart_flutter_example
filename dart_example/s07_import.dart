/*

  다른 파일이나 패키지를 가져올 경우 사용하는 키워드이다.
  import '패키지명/파일명.dart';

  다른 파일이나 패키지를 가져올 때 별칭을 붙여서 가져올 수 있다.
  import '패키지명/파일명.dart' as 별칭;

  다른 파일이나 패키지를 가져올 때 특정 식별자만 가져올 수 있다.
  import '패키지명/파일명.dart' show 식별자;

  다른 파일이나 패키지를 가져올 때 특정 식별자를 제외하고 가져올 수 있다.
  import '패키지명/파일명.dart' hide 식별자;

*/

import 's06_05_private.dart' as privateData;

void main(List<String> args) {
  print(privateData.MIN_COUNT); // 정상 작동
  // print(privateData._MAX_COUNT); // 에러 발생

  // 문제 없음. 위 내용을 잘 읽어볼 것.
}

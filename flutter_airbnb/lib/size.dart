import 'package:flutter/cupertino.dart';

// 간격
const double gapXl = 40;
const double gapL = 30;
const double gapM = 20;
const double gapS = 10;
const double gapXs = 5;

// 헤더 높이
const double headerHeight = 620;

// MediaQuery 클래스로 화면 사이즈를 받을 수 있다.
double getBodyWidth(BuildContext context) {
  return MediaQuery.of(context).size.width * 0.7;
}

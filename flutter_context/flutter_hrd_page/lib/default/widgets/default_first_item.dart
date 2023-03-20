import 'package:flutter/material.dart';

class DefaultFirstItem extends StatelessWidget {
  final bool isChecked;

  const DefaultFirstItem(bool this.isChecked, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.yellow,
      child: Center(
        child: Text("확인 : ${isChecked}"),
      ),
    );
  }
}

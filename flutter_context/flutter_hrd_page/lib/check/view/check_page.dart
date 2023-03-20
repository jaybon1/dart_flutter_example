import 'package:flutter/material.dart';
import 'package:flutter_hrd_page/check/controller/check_controller.dart';
import 'package:provider/provider.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkController = context.read<CheckController>();

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Text("체크페이지"),
                ElevatedButton(
                    onPressed: (){
                      checkController.change();
                    },
                    child: Text("값 변경"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BottomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const BottomIconButton({Key? key, required this.icon, required this.text})
      : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "All"),
          const Spacer(),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          const Spacer(),
          _buildMenuItem(Icons.fastfood, "Burger"),
          const Spacer(),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }
}

Widget _buildMenuItem(IconData mIcon, String text) {
  return Container(
    width: 90,
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          mIcon,
          color: Colors.redAccent,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(color: Colors.black87)),
      ],
    ),
  );
}

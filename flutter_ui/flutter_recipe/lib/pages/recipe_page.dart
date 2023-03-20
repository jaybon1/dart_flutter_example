import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white, // 배경색
    elevation: 1.0, // 그림자
    actions: const [
      Icon(
        CupertinoIcons.search,
        color: Colors.black,
      ),
      SizedBox(width: 15),
      Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
      ),
      SizedBox(width: 15),
    ],
  );
}

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizza", "Made Pizza"),
          ],
        ),
      ),
    );
  }
}

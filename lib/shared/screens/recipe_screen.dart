import 'package:advance_navigation/shared/model/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen(
      {super.key, required this.recipeList, required this.onTapRecipe});
  final List<Recipe> recipeList;
  final ValueChanged<Recipe> onTapRecipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          for (Recipe item in recipeList)
            ListTile(
              title: Text(item.name),
              subtitle: Text(item.description),
              trailing: Text(item.category),
              onTap: () => onTapRecipe.call(item),
            )
        ],
      ),
    );
  }
}

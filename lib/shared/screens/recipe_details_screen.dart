import 'package:advance_navigation/shared/model/recipe_model.dart';
import 'package:flutter/material.dart';

class RecipeDetailScreen extends StatelessWidget {
  const RecipeDetailScreen({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recipe.name,
                      style: Theme.of(context).textTheme.headlineMedium),
                  Text(recipe.category,
                      style: Theme.of(context).textTheme.titleMedium),
                  Text(recipe.description,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

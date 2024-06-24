import 'package:advance_navigation/shared/model/recipe_model.dart';
import 'package:advance_navigation/shared/screens/notfound_screen.dart';
import 'package:advance_navigation/shared/screens/recipe_details_screen.dart';
import 'package:advance_navigation/shared/screens/recipe_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Recipe? _selectedRecipe;
  bool showUnkown = false;
  List<Recipe> recipe = RECIPE;

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedRecipe = null;
    });
  }

  bool onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) return false;
    setState(() {
      _selectedRecipe = null;
    });
    return true;
  }

  void onTapRecipe(Recipe recipe) {
    setState(() {
      _selectedRecipe = recipe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advance Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Navigator(
        onPopPage: onPopPage,
        pages: [
          MaterialPage(
            key: const ValueKey("home"),
            child: RecipeScreen(
              recipeList: recipe,
              onTapRecipe: onTapRecipe,
            ),
          ),
          if (showUnkown)
            const MaterialPage(
              key: ValueKey("notFound"),
              child: NotFoundScreen(),
            )
          else if (_selectedRecipe != null)
            MaterialPage(
              key: const ValueKey("selectedRecipe"),
              child: RecipeDetailScreen(recipe: _selectedRecipe!),
            )
        ],
      ),
    );
  }
}

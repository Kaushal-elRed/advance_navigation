import 'package:advance_navigation/navigator_2.0_with_delegates/recipe_route_path.dart';
import 'package:advance_navigation/shared/model/recipe_model.dart';
import 'package:advance_navigation/shared/screens/notfound_screen.dart';
import 'package:advance_navigation/shared/screens/recipe_details_screen.dart';
import 'package:advance_navigation/shared/screens/recipe_screen.dart';
import 'package:flutter/material.dart';

class RecipeRouterDelegate extends RouterDelegate<RecipeRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  Recipe? _selectedRecipe;
  bool show404 = false;

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  RecipeRoutePath? get currentConfiguration {
    if (show404) return RecipeRoutePath.unknown();
    if (_selectedRecipe == null) return RecipeRoutePath.home();

    return RecipeRoutePath.detail(RECIPE.indexOf(_selectedRecipe!));
  }

  bool onPopPage(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) return false;

    _selectedRecipe = null;
    show404 = false;
    notifyListeners();

    return true;
  }

  void onTapRecipe(Recipe recipe) {
    _selectedRecipe = recipe;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: onPopPage,
      pages: [
        MaterialPage(
          key: const ValueKey("home"),
          child: RecipeScreen(
            recipeList: RECIPE,
            onTapRecipe: onTapRecipe,
          ),
        ),
        if (show404)
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
    );
  }

  @override
  Future<void> setNewRoutePath(RecipeRoutePath configuration) async {
    if (configuration.isUnknown) {
      _selectedRecipe = null;
      show404 = true;
      return;
    }

    if (configuration.isDetailPage) {
      if (configuration.id!.isNegative ||
          configuration.id! > RECIPE.length - 1) {
        _selectedRecipe = null;
        show404 = true;
        return;
      }
      _selectedRecipe = RECIPE[configuration.id!];
    } else {
      _selectedRecipe = null;
    }
    show404 = false;
  }
}

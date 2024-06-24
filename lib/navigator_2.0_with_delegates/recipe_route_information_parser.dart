import 'package:advance_navigation/navigator_2.0_with_delegates/recipe_route_path.dart';
import 'package:flutter/material.dart';

class RecipeRouteInformationParser
    extends RouteInformationParser<RecipeRoutePath> {
  @override
  Future<RecipeRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? "");
    if (uri.pathSegments.isEmpty) return RecipeRoutePath.home();
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments.first != "recipe") return RecipeRoutePath.unknown();
      final remaining = uri.pathSegments.elementAt(1);
      final int? id = int.tryParse(remaining);
      if (id == null) return RecipeRoutePath.unknown();
      return RecipeRoutePath.detail(id);
    }
    return RecipeRoutePath.unknown();
  }

  @override
  RouteInformation? restoreRouteInformation(RecipeRoutePath configuration) {
    if (configuration.isUnknown) {
      return const RouteInformation(location: "/404");
    }
    if (configuration.isHomePage) {
      return const RouteInformation(location: "/");
    }
    if (configuration.isDetailPage) {
      return RouteInformation(location: "/recipe/${configuration.id}");
    }
    return null;
  }
}

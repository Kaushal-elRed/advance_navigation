import 'package:advance_navigation/navigator_2.0_with_delegates/recipe_route_delegate.dart';
import 'package:advance_navigation/navigator_2.0_with_delegates/recipe_route_information_parser.dart';
import 'package:flutter/material.dart';

class MyAppWithDelegate extends StatelessWidget {
  const MyAppWithDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Advance Navigation with Delegates',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerDelegate: RecipeRouterDelegate(),
      routeInformationParser: RecipeRouteInformationParser(),
    );
  }
}

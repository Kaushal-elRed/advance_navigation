class RecipeRoutePath {
  final int? id;
  final bool isUnknown;

  RecipeRoutePath.home()
      : id = null,
        isUnknown = false;

  RecipeRoutePath.detail(this.id) : isUnknown = false;

  RecipeRoutePath.unknown()
      : id = null,
        isUnknown = true;

  bool get isHomePage => id == null;
  bool get isDetailPage => id != null;
}

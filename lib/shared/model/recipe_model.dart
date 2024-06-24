class Recipe {
  final String name;
  final String category;
  final String chef;
  final String description;

  Recipe(
      {required this.category,
      required this.chef,
      required this.name,
      required this.description});
}

List<Recipe> RECIPE = [
  Recipe(
    name: "Spaghetti Carbonara",
    category: "Italian",
    chef: "Chef Mario",
    description:
        "A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.",
  ),
  Recipe(
    name: "Chicken Tikka Masala",
    category: "Indian",
    chef: "Chef Ayesha",
    description:
        "Grilled chicken pieces cooked in a creamy, spiced tomato sauce.",
  ),
  Recipe(
    name: "Sushi",
    category: "Japanese",
    chef: "Chef Hiro",
    description:
        "Traditional Japanese dish consisting of vinegared rice, raw fish, and vegetables.",
  ),
  Recipe(
    name: "Tacos",
    category: "Mexican",
    chef: "Chef Juan",
    description:
        "Soft or crispy tortillas filled with meat, cheese, and various toppings.",
  ),
  Recipe(
    name: "Beef Wellington",
    category: "British",
    chef: "Chef Gordon",
    description:
        "A fillet steak coated with pâté and duxelles, wrapped in puff pastry, and baked.",
  ),
  Recipe(
    name: "Croissant",
    category: "French",
    chef: "Chef Pierre",
    description:
        "A buttery, flaky, and golden-brown pastry that's perfect for breakfast.",
  ),
  Recipe(
    name: "Pad Thai",
    category: "Thai",
    chef: "Chef Nong",
    description:
        "Stir-fried rice noodle dish with shrimp, tofu, peanuts, and a tangy sauce.",
  ),
  Recipe(
    name: "Peking Duck",
    category: "Chinese",
    chef: "Chef Wang",
    description:
        "Crispy roast duck served with pancakes, hoisin sauce, and scallions.",
  ),
  Recipe(
    name: "Lamb Kebabs",
    category: "Middle Eastern",
    chef: "Chef Karim",
    description:
        "Grilled skewers of marinated lamb served with pita bread and yogurt sauce.",
  ),
  Recipe(
    name: "Paella",
    category: "Spanish",
    chef: "Chef Maria",
    description:
        "A traditional Spanish rice dish cooked with saffron, seafood, and vegetables.",
  ),
];

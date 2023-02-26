enum Complexity {
  Simple,
  Medium,
  Difficult,
}

enum Cost {
  Cheap,
  Fair,
  Expensive,
}

class Meal {
  final String id;
  final String title;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final String imageUrl;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.id,
    required this.title,
    required this.categories,
    required this.imageUrl,
    required this.duration,
    required this.steps,
    required this.ingredients,
    required this.cost,
    required this.complexity,
    this.isGlutenFree = false,
    this.isVegan = false,
    this.isLactoseFree = false,
    this.isVegetarian = false,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Medium:
        return 'Medium';
      case Complexity.Difficult:
        return 'Difficult';
      default:
        return 'Complexidade Desconhecida';
    }
  }
}

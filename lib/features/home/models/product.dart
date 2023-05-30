class Product {
  final int id;
  final String category;
  final String title;
  final String imagePath;
  final double price;
  final double rating;
  final int votes;
  final List<String> description;
  final List<String>? thumbnailPaths;
  bool isLiked;

  Product(
      {required this.id,
      required this.category,
      required this.title,
      required this.imagePath,
      required this.price,
      required this.rating,
      required this.votes,
      required this.description,
      this.thumbnailPaths,
      this.isLiked = false});

  toggleIsLiked() => isLiked = !isLiked;
}

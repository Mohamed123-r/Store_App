class ProductModel {
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductModel.fromJson(jsoData) {
    return ProductModel(
      id: jsoData['id'],
      title: jsoData['title'],
      price: jsoData['price'],
      description: jsoData['description'],
      category: jsoData['category'],
      image: jsoData['image'],
      rating: RatingModel.fromJson(
        jsoData["rating"],
      ),
    );
  }
}

class RatingModel {
  final num rate;
  final num count;

  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsoData) {
    return RatingModel(
      count: jsoData["count"],
      rate: jsoData["rate"],
    );
  }
}

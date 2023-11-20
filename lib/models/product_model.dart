class ProductModel {
  ProductModel(
      {required this.id,
      required this.category,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'].toString(),
        description: jsonData['description'],
        image: jsonData['image'],
        rating: RatingModel.fromJson(jsonData['rating']),
        category: '');
  }
  final String category;
  final String description;
  final dynamic id;
  final String image;
  final String price;
  final RatingModel rating;
  final String title;
}

class RatingModel {
  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'].toString(),
      count: jsonData['count'],
    );
  }

  final int count;
  final String rate;
}

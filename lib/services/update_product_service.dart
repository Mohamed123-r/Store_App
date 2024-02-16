import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class UpdateProductService {
  updateProductService({
    required int id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    print(id);
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
      token: '',
    );
    return ProductModel.fromJson(data);
  }
}

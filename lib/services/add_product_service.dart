import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class AddProductService {
  addProductService({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, String> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
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

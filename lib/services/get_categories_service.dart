import 'package:store/helper/api.dart';
import 'package:store/models/product_model.dart';

class GetCategoriesService {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productModel = [];
    for (int i = 0; i < data.length; i++) {
      productModel.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productModel;
  }
}

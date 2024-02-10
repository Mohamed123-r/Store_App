import 'dart:convert';
import 'package:store/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetCategoriesService {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    var response = await http.get(
        Uri.parse("https://fakestoreapi.com/products/category/$categoryName"));

    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productModel = [];
    for (int i = 0; i < data.length; i++) {
      productModel.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productModel;
  }
}

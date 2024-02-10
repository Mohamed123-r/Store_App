import 'dart:convert';
import 'package:store/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProduceService {
  Future<List<ProductModel>> getAllProduct() async {
    var response =
    await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productModel = [];
      for (int i = 0; i < data.length; i++) {
        productModel.add(
          ProductModel.fromJson(data[i]),
        );
      }
      return productModel;
    } else {
      throw Exception(
          "there is a problem with status code ${response.statusCode}");
    }
  }
}
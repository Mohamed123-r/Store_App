import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/all_product_service.dart';
import 'package:store/widgets/grid_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          "New Trend",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80.0,
          right: 8,
          left: 8,
        ),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProduceService().getAllProduct(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> product = snapshot.data;
              return GridViewBuilder(
                product: product,
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

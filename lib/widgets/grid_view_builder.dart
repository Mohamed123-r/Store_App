import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/pages/update_product_page.dart';
import 'custom_card.dart';

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({super.key, required this.product});

  List<ProductModel> product;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.25,
        mainAxisSpacing: 75,
        crossAxisSpacing: 10,
      ),
      itemCount: product.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  UpdateProductPage();
                },
              ),
            );
          },
          child: CustomCard(
            productModel: product[index],
          ),
        );
      },
    );
  }
}

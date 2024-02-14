import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.productModel});

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                spreadRadius: 0.5,
                blurRadius: 10,
                offset: const Offset(1, 10),
              ),
            ],
          ),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        r"$ " + productModel.price.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[800],
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 60,
          top: -60,
          child: Image.network(
            productModel.image,
            height: 120,
            width: 120,
          ),
        ),
      ],
    );
  }
}

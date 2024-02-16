import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/services/update_product_service.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_text_field.dart';

import '../models/product_model.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key, required this.product});

  final ProductModel product;

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName;
  String? desc;
  String? image;
  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Update Product",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomFormTextField(
                    hintText: "Product Name ",
                    onChanged: (data) {
                      productName = data;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormTextField(
                    hintText: "Description ",
                    onChanged: (data) {
                      desc = data;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormTextField(
                    textInputType: TextInputType.number,
                    hintText: "Price ",
                    onChanged: (data) {
                      price = data;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomFormTextField(
                    hintText: "Image ",
                    onChanged: (data) {
                      image = data;
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    text: "Update",
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      await updateProduct();
                      print("object");
                      setState(() {
                        isLoading = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct() async {
    await UpdateProductService().updateProductService(
        title: productName == null ? widget.product.title : productName!,
        price: price == null ? widget.product.price.toString() : price!,
        description: desc == null ? widget.product.description : desc!,
        image: image == null ? widget.product.image : image!,
        category: widget.product.category,
        id: widget.product.id);
  }
}

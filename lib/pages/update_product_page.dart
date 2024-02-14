import 'package:flutter/material.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  String? productName;
  String? desc;
  String? image;
  num? price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onChanged: (data){
                    productName=data;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormTextField(
                  hintText: "Description ",
                  onChanged: (data){
                    desc=data;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormTextField(
                  textInputType: TextInputType.number,
                  hintText: "Price ",
                  onChanged: (data){
                    price=int.parse(data);
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormTextField(
                  hintText: "Image ",
                  onChanged: (data){
                    image=data;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                const CustomButton(
                  text: "Update",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

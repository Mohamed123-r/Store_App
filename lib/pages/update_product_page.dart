import 'package:flutter/material.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

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
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormTextField(
                  hintText: "Description ",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormTextField(
                  hintText: "Price ",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomFormTextField(
                  hintText: "Image ",
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

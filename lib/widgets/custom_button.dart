import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.blue,
      height: 60,
      minWidth: double.infinity,
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}

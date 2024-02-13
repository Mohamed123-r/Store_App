import 'package:flutter/material.dart';
import 'custom_card.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.25,
        mainAxisSpacing: 75,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const CustomCard();
      },
    );
  }
}

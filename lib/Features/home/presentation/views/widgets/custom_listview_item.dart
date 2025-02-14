import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturdsListviewItem extends StatelessWidget {
  const FeaturdsListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 219, 173, 143),
            image: DecorationImage(
                image: AssetImage(AssetsData.testimage), fit: BoxFit.fill)),
      ),
    );
  }
}

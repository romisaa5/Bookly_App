import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
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

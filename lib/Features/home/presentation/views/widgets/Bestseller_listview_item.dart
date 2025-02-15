import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestsellerListviewItem extends StatelessWidget {
  const BestsellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:120,
child:  Row(
  children: [
    AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 219, 173, 143),
            image: DecorationImage(
                image: AssetImage(AssetsData.testimage), fit: BoxFit.fill)),
      ),
    )
  ],
));
  }
}

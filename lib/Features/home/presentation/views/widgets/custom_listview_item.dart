import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListviewItem extends StatelessWidget {
  const CustomListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.35,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
            
            image: DecorationImage(image: AssetImage(AssetsData.testimage),
            fit: BoxFit.fill)
          ),
        ),
      ),
    );
  }
}
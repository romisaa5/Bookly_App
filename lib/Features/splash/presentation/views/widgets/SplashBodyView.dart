import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashBodyView extends StatelessWidget {
  const SplashBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.Logo)
      ,
      Text('Read Free Books',textAlign: TextAlign.center,)],
    );
  }
}

import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomBoxAction extends StatelessWidget {
  const CustomBoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomButton(
          text: r'19.9 $',
          backgroundcolor: Colors.white,
          textcolor: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
        )),
         Expanded(child: CustomButton(
          text: 'Free Preview',
          backgroundcolor:
          Color(0xffEF8262),
          textcolor: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12)),
        ))
      ],
    );
  }
}
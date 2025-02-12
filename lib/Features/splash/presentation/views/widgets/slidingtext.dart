
import 'package:flutter/material.dart';

class slidingText extends StatelessWidget {
  const slidingText({
    super.key,
    required this.slidinganimation,
  });

  final Animation<Offset> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidinganimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidinganimation,
            child: Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}

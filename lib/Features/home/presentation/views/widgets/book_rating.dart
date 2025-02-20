import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      spacing: 8,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        Text(
       rating,
          style: styles.textstyle14,
        ),
        Opacity(opacity: .5, child: Text('($count)', style: styles.textstyle14))
      ],
    );
  }
}

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
spacing: 6.5,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),
        ),Text('4.4',style: styles.textstyle16,),
        Text('(214)',style: styles.textstyle14.copyWith(color:Color (0xff707070)),)
      ],
    );
  }
}
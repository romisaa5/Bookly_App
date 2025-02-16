import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,required this.mainAxisAlignment});
final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
spacing: 8,
      children: [
        Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),size: 15,
        ),Text('4.4',style: styles.textstyle16,),
        Opacity(
          opacity: .5,
          child: Text('(214)',style: styles.textstyle14))
      ],
    );
  }
}
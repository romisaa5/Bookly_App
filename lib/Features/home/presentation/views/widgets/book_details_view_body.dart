import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_bookdetails_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_box_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthscreen = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookdetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthscreen * .22),
            child: CustomBookImage(),
          ),
          SizedBox(height: 34,),
          Text('The Jungle Book',style: styles.textstyle30,),
          SizedBox(height: 6,),
            Opacity(
              opacity: .7,
              child: Text('Rudyard Book',style: styles.textstyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500
              ),),
            ),
              SizedBox(height: 18,),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
              SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBoxAction(),
            ),SizedBox(height: 40,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('You can also like',style:styles.textstyle14.copyWith(
                fontWeight: FontWeight.w600
              ) ,),
            ),
            SizedBox(height: 20,),
            SimilarBooksListview()
        ],
      ),
    );
  }
}

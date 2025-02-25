import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_bookdetails_appbar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_box_action.dart';
import 'package:bookly/Features/home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var widthscreen = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookdetailsAppbar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: widthscreen * .22),
                  child: CustomBookImage(
                    imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                        'assets/images/book.jpg',
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Text(
                  bookModel.volumeInfo.title!,
                  style: styles.textstyle30,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                 bookModel.volumeInfo.authors![0],
                    style: styles.textstyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                BookRating(
                  count: bookModel.volumeInfo.pageCount??0,
                  rating: bookModel.volumeInfo.maturityRating??'0',
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBoxAction(),
                ),
                Expanded(
                    child: SizedBox(
                  height: 40,
                )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: styles.textstyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SimilarBooksListview(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListviewItem extends StatelessWidget {
  const BookListviewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookdetailsListview,extra: bookModel);
      },
      child: SizedBox(
          height: 135,
          child: Row(
            spacing: 30,
            children: [
              CustomBookImage(
                  imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                      'assets/images/book.jpg'),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 3,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: styles.textstyle20
                            .copyWith(fontFamily: Kfontfamily1),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: styles.textstyle14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: styles.textstyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating(
                          rating: bookModel.volumeInfo.maturityRating!,
                          count: bookModel.volumeInfo.pageCount!,
                          mainAxisAlignment: MainAxisAlignment.center,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

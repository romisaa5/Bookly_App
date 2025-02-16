import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestsellerListviewItem extends StatelessWidget {
  const BestsellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookdetailsListview);
      },
      child: SizedBox(
          height: 120,
          child: Row(
            spacing: 30,
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 219, 173, 143),
                      image: DecorationImage(
                          image: AssetImage(AssetsData.testimage),
                          fit: BoxFit.fill)),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 3,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'Harry Poter and The Goplet of Fire',
                        style: styles.textstyle20
                            .copyWith(fontFamily: Kfontfamily1),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      'Harry Poter and The Goplet of Fire',
                      style: styles.textstyle14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'19.99 $',
                          style: styles.textstyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating(
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

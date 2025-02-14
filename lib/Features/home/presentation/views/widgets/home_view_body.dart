import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';

import 'package:bookly/Features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppbar(),
        FeaturedBooksListview(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Text('Best Seller', style: styles.titlemedium),
            ],
          ),
        )
      ],
    );
  }
}

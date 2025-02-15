import 'package:bookly/Features/home/presentation/views/widgets/best_seler_listview.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_appbar.dart';

import 'package:bookly/Features/home/presentation/views/widgets/featured_books_listview.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),
              FeaturedBooksListview(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Best Seller', style: styles.textstyle18),
              SizedBox(
                height: 20
              )
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(

             padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: BestSelerListview(),
          )
        )
      ],
    );
  }
}

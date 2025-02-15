import 'package:bookly/Features/home/presentation/views/widgets/Bestseller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSelerListview extends StatelessWidget {
  const BestSelerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: BestsellerListviewItem(),
        );
      },
    );
  }
}

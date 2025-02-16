import 'package:bookly/Features/search/presentation/views/widgets/custom_textfield.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded( 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            CustomTextfield(),
             SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Search Result', style: styles.textstyle18)),
              SizedBox(
                height: 20
              ),
            Expanded(child: SearchResultListview()), 
          ],
        ),
      ),
    );
  }
}

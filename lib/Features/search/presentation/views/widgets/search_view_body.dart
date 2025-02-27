import 'package:bookly/Features/search/presentation/repo/searchrepo.dart';
import 'package:bookly/Features/search/presentation/views/widgets/custom_textfield.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  _SearchViewBodyState createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<BookModel> searchResults = [];
  final SearchRepository searchRepo = SearchRepository();

  void searchBooks(String query) async {
    if (query.isNotEmpty) {
      List<BookModel> results = await searchRepo.fetchBooks(query);
      setState(() {
        searchResults = results;
      });
    } else {
      setState(() {
        searchResults = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomTextfield(
            onChanged: searchBooks, // ✅ استدعاء البحث عند الكتابة
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Search Result', style: styles.textstyle18),
          ),
          SizedBox(height: 20),
          Expanded(
            child: searchResults.isNotEmpty
                ? Expanded(
  child: SearchResultListview(books: searchResults),
)

                : Center(child: Text("No results found")),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/Bestseller_listview_item.dart';

class SearchResultListview extends StatelessWidget {
  final List<BookModel> books; // ✅ تأكد إنك عرّفت `books`

  const SearchResultListview({super.key, required this.books}); 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: BookListviewItem(
            bookModel: books[index],
          ),
        );
      },
    );
  }
}

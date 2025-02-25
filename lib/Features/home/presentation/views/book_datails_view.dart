import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDatailsView extends StatefulWidget {
  const BookDatailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDatailsView> createState() => _BookDatailsViewState();
}

class _BookDatailsViewState extends State<BookDatailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubitCubit>(context).fetchSimilardbooks(
      category: widget.bookModel.volumeInfo.categories![0]
      
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetailsViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}

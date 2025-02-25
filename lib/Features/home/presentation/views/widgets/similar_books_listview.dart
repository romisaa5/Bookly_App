import 'package:bookly/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_error_widget.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl:
                         state.books[index].volumeInfo.imageLinks?.thumbnail??'assets/images/book.jpg',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksCubitFailure) {
          return CustomErrorWidget(errormessage: state.errormessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}

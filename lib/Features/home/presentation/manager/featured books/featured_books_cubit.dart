import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homerepo) : super(FeaturedBooksInitial());
  final HomeRepo homerepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homerepo.fetchFeaturedbooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errormessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}

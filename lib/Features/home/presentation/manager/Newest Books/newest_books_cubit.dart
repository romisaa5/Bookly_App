import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homerepo) : super(NewestBooksInitial());
   final HomeRepo homerepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homerepo.fetchFeaturedbooks();
    result.fold((failure) {
      emit(NewestBooksFailure(failure.errormessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}

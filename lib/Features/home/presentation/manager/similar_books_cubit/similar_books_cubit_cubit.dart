import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubitCubit extends Cubit<SimilarBooksCubitState> {
  SimilarBooksCubitCubit(this.homerepo) : super(SimilarBooksCubitInitial());
  final HomeRepo homerepo;
  Future<void> fetchSimilardbooks({required String category}) async {
    emit(SimilarBooksCubitLoading());

    var result = await homerepo.fetchSimilardbooks(category:category );

    result.fold((failure) {
      emit(SimilarBooksCubitFailure(failure.errormessage));
    }, (books) {
      emit(SimilarBooksCubitSuccess(books));
    });
  }
}

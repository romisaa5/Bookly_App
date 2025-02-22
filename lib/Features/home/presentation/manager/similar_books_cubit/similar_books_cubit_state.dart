part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksCubitState extends Equatable {
  const SimilarBooksCubitState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksCubitInitial extends SimilarBooksCubitState {}

final class SimilarBooksCubitLoading extends SimilarBooksCubitState {}

final class SimilarBooksCubitFailure extends SimilarBooksCubitState {
  final String errormessage;
  SimilarBooksCubitFailure(this.errormessage);
}

final class SimilarBooksCubitSuccess extends SimilarBooksCubitState {
  final List<BookModel> books;
  SimilarBooksCubitSuccess(this.books);
}

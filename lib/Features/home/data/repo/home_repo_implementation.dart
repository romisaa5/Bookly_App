import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repo/home_repo.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestsellerbooks() {
    // TODO: implement fetchBestsellerbooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedbooks() {
    // TODO: implement fetchFeaturedbooks
    throw UnimplementedError();
  }

}
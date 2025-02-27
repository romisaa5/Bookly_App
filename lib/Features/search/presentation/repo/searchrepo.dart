import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:dio/dio.dart';

class SearchRepository {
  final Dio _dio = Dio();

  Future<List<BookModel>> fetchBooks(String query) async {
    try {
      final response = await _dio.get(
        'https://www.googleapis.com/books/v1/volumes?q=$query',
      );

      if (response.statusCode == 200) {
        List books = response.data['items'];
        return books.map((book) => BookModel.fromJson(book)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print("Error fetching books: $e");
      return [];
    }
  }
}

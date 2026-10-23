import 'package:book_app/features/home/domain/book.dart';

abstract class BookRepository {
  Future<List<Book>> getBooks();
}

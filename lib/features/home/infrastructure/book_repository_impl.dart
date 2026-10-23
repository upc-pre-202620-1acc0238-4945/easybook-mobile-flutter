import 'package:book_app/features/home/domain/book.dart';
import 'package:book_app/features/home/domain/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  @override
  Future<List<Book>> getBooks() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Book(
        id: 1,
        title: '1984',
        author: 'George Orwell',
        cover: 'https://covers.openlibrary.org/b/id/7222246-L.jpg',
      ),
      Book(
        id: 2,
        title: 'Cien años de soledad"',
        author: 'Gabriel García Márquez',
        cover: 'https://covers.openlibrary.org/b/id/1055707-L.jpg',
      ),
    ];
  }
}

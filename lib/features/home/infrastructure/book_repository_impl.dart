import 'package:book_app/features/home/domain/book.dart';
import 'package:book_app/features/home/domain/book_repository.dart';
import 'package:book_app/features/home/infrastructure/remote/book_api.dart';
import 'package:book_app/features/home/infrastructure/remote/book_dto.dart';

class BookRepositoryImpl implements BookRepository {
  final BookApi api;

  const new({required this.api});
  @override
  Future<List<Book>> getBooks() async {
    List<BookDto> dtos = await api.getBooks();

    return dtos
        .map(
          (e) =>
              Book(id: e.id, title: e.title, author: e.author, cover: e.cover),
        )
        .toList();
  }
}

import 'package:book_app/features/home/domain/book.dart';
import 'package:book_app/features/home/domain/book_repository.dart';

class GetBooksUseCase {
  final BookRepository repository;

  const new({required this.repository});

  Future<List<Book>> execute() async {
    return await repository.getBooks();
  }
}

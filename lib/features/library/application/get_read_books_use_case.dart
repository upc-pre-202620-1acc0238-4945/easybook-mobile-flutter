import 'package:book_app/features/library/domain/read_book.dart';
import 'package:book_app/features/library/domain/readlist_repository.dart';

class GetReadBooksUseCase {
  final ReadlistRepository _repository;

  const new({required this._repository});

  Future<List<ReadBook>> execute() async {
    return await _repository.getReadList();
  }
}

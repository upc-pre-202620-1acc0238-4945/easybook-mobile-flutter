import 'package:book_app/features/home/domain/book.dart';
import 'package:book_app/features/library/domain/read_book.dart';
import 'package:book_app/features/library/domain/readlist_repository.dart';
import 'package:book_app/features/library/infrastructure/remote/read_book_dto.dart';
import 'package:book_app/features/library/infrastructure/remote/readlist_api.dart';

class ReadlistRepositoryImpl implements ReadlistRepository {
  final ReadlistApi _api;

  const new({required this._api});
  @override
  Future<List<ReadBook>> getReadList() async {
    List<ReadBookDto> dtos = await _api.getReadBooks();
    return dtos
        .map(
          (dto) => ReadBook(
            book: Book(
              id: dto.id,
              title: dto.title,
              author: dto.author,
              cover: dto.cover,
            ),
            readDate: DateTime.parse(dto.addedAt),
          ),
        )
        .toList();
  }

  @override
  Future<void> addToReadList(ReadBook book) {
    throw UnimplementedError();
  }

  @override
  Future<void> removeFromReadList(ReadBook book) {
    throw UnimplementedError();
  }
}

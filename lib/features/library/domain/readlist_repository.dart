import 'package:book_app/features/library/domain/read_book.dart';

abstract class ReadlistRepository {
  Future<List<ReadBook>> getReadList();
  Future<void> addToReadList(ReadBook book);
  Future<void> removeFromReadList(ReadBook book);
}
import 'package:book_app/features/home/domain/book.dart';

class ReadBook {
  final Book book;
  final DateTime readDate;

  const new({required this.book, required this.readDate});
}

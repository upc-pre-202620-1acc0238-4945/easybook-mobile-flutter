import 'package:book_app/features/library/application/get_read_books_use_case.dart';
import 'package:book_app/features/library/domain/read_book.dart';
import 'package:flutter/material.dart';

class ReadlistViewModel extends ChangeNotifier {
  final GetReadBooksUseCase _getReadBooks;

  new({required this._getReadBooks}){
    getReadBooks();
  }

  List<ReadBook> books = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> getReadBooks() async {
    isLoading = true;
    notifyListeners();

    try {
      books = await _getReadBooks.execute();
      isLoading = false;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
    }
    notifyListeners();
  }
}

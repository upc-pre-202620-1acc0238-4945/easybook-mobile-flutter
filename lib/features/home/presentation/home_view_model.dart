import 'package:book_app/features/home/application/get_books_use_case.dart';
import 'package:book_app/features/home/domain/book.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier{
  final GetBooksUseCase useCase;

  HomeViewModel({required this.useCase});

  List<Book> books = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> loadBooks() async {
    isLoading = true;
    notifyListeners();

    books = await useCase.execute();
    isLoading = false;
    notifyListeners();

  }
}

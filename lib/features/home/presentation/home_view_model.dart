import 'package:book_app/features/favorites/application/get_favorites_use_case.dart';
import 'package:book_app/features/favorites/application/toggle_favorite_use_case.dart';
import 'package:book_app/features/home/application/get_books_use_case.dart';
import 'package:book_app/features/home/domain/book.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final GetBooksUseCase getMovies;
  final GetFavoritesUseCase getFavorites;
  final ToggleFavoriteUseCase toggleFavorite;

  new({
    required this.getMovies,
    required this.getFavorites,
    required this.toggleFavorite,
  }) {
    loadBooks();
  }

  List<Book> books = [];
  List<int> favoriteIds = [];
  bool isLoading = false;
  String? errorMessage;

  List<Book> get favorites =>
      books.where((book) => isFavorite(book.id)).toList();

  Future<void> loadBooks() async {
    isLoading = true;
    notifyListeners();

    books = await getMovies.execute();
    favoriteIds = await getFavorites.execute();
    isLoading = false;
    notifyListeners();
  }

  bool isFavorite(int id) {
    return favoriteIds.contains(id);
  }

  Future<void> toggleFavoriteBook(int id) async {
    await toggleFavorite.execute(id);
    favoriteIds = await getFavorites.execute();
    notifyListeners();
  }
}

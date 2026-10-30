import 'package:book_app/features/home/domain/book.dart';
import 'package:book_app/features/home/presentation/book_card.dart';
import 'package:book_app/features/home/presentation/book_detail_page.dart';
import 'package:book_app/features/home/presentation/home_view_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.viewModel});
  final HomeViewModel viewModel;


  @override
  Widget build(BuildContext context) {

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        if (viewModel.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: viewModel.books.length,
          itemBuilder: (context, index) {
            Book book = viewModel.books[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(book: book),
                ),
              ),
              child: BookCard(
                book: book,
                isFavorite: viewModel.isFavorite(book.id),
                onToggleFavorite: () {
                  viewModel.toggleFavoriteBook(book.id);
                },
              ),
            );
          },
        );
      },
    );
  }
}

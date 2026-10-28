import 'package:book_app/features/home/domain/book.dart';
import 'package:book_app/features/home/presentation/book_card.dart';
import 'package:book_app/features/home/presentation/home_view_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.viewModel});
  final HomeViewModel viewModel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.loadBooks();
  }

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = widget.viewModel;

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
            return BookCard(book: book);
          },
        );
      },
    );
  }
}

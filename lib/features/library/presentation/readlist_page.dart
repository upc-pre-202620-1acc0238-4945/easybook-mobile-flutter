import 'package:book_app/features/library/domain/read_book.dart';
import 'package:book_app/features/library/presentation/readlist_view_model.dart';
import 'package:flutter/material.dart';

class ReadlistPage extends StatelessWidget {
  final ReadlistViewModel _viewModel;
  const new({super.key, required this._viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, child) {
        List<ReadBook> books = _viewModel.books;
        bool isLoading = _viewModel.isLoading;
        String? errorMessage = _viewModel.errorMessage;
        if (isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        if (books.isNotEmpty) {
          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final ReadBook book = books[index];
              return Card(
                child: ListTile(
                  leading: Image.network(
                    book.book.cover,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    book.book.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(book.readDate.toString()),
                ),
              );
            },
          );
        }

        if (errorMessage != null) {
          return Center(child: Text(errorMessage));
        }

        return Center(child: Text("Empty library"));
      },
    );
  }
}

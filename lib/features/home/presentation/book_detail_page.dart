import 'package:book_app/features/home/domain/book.dart';
import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  const new({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.40,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: book.id,
                child: Image.network(
                  book.cover,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        body: Text(book.title),
      ),
    );
  }
}

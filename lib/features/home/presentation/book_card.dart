import 'package:book_app/features/home/domain/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const new({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.network(
              book.cover,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book.title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(book.author),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

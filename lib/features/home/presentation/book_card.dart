import 'package:book_app/features/home/domain/book.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const new({
    super.key,
    required this.book,
    required this.isFavorite,
    required this.onToggleFavorite,
  });
  final Book book;
  final bool isFavorite;
  final Function onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: book.id,
                child: ClipRRect(
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
              ),
              Align(
                alignment: AlignmentGeometry.topEnd,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipOval(
                    child: Container(
                      color: Theme.of(context).colorScheme.surface,
                      child: IconButton(
                        onPressed: () => onToggleFavorite(),
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_outline,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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

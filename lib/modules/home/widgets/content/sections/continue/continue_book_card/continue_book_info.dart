import 'package:book_app_tapped/models/book/book.dart';
import 'package:flutter/material.dart';

class ContinueBookInfo extends StatelessWidget {
  const ContinueBookInfo({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          book.title,
          style: Theme.of(context).textTheme.labelSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          book.author,
          style: Theme.of(context).textTheme.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

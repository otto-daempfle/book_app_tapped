import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/book_suggestion_list_tile/book_suggestion_info.dart';
import 'package:book_app_tapped/widgets/book/cover_image.dart';
import 'package:flutter/material.dart';

class BookSuggestionListTile extends StatelessWidget {
  const BookSuggestionListTile({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: Row(
        children: [
          CoverImage(
            url: book.coverUrl,
            width: 54,
            height: 80,
            borderRadius: 10,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: BookSuggestionInfo(
              book: book,
            ),
          ),
        ],
      ),
    );
  }
}

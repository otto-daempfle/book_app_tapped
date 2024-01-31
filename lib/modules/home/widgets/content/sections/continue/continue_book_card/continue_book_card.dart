import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/modules/home/widgets/content/sections/continue/continue_book_card/continue_book_cover_header.dart';
import 'package:book_app_tapped/modules/home/widgets/content/sections/continue/continue_book_card/continue_book_info.dart';
import 'package:flutter/material.dart';

class ContinueBookCard extends StatelessWidget {
  const ContinueBookCard({super.key, required this.book, required this.onTap});

  final Book book;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 120,
          child: Column(
            children: [
              ContinueBookCoverHeader(book: book),
              const SizedBox(
                height: 5,
              ),
              ContinueBookInfo(book: book),
            ],
          ),
        ),
      ),
    );
  }
}

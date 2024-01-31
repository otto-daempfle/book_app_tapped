import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/modules/home/widgets/content/sections/new/new_book_list_tile/new_book_info.dart';
import 'package:book_app_tapped/modules/home/widgets/content/sections/new/new_book_list_tile/new_book_reminder.dart';
import 'package:book_app_tapped/widgets/book/cover_image.dart';
import 'package:flutter/material.dart';

class NewBookListTile extends StatelessWidget {
  const NewBookListTile({super.key, required this.book, required this.onTap});

  final Book book;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Row(
          children: [
            CoverImage(url: book.coverUrl, width: 75, height: 100),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: NewBookInfo(book: book),
            ),
            const NewBookReminder(),
          ],
        ),
      ),
    );
  }
}

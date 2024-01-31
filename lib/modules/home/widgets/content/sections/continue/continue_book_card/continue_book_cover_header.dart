import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/utils/constants/icon_constants.dart';
import 'package:book_app_tapped/widgets/book/cover_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContinueBookCoverHeader extends StatelessWidget {
  const ContinueBookCoverHeader({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        children: [
          Positioned.fill(
            child: CoverImage(
              url: book.coverUrl,
              width: 100,
              height: 100,
              shape: BoxShape.circle,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SvgPicture.asset(IconConstants.play),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

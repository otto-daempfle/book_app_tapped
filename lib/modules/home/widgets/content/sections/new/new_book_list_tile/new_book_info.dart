import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/utils/constants/icon_constants.dart';
import 'package:book_app_tapped/utils/extensions/date_time_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewBookInfo extends StatelessWidget {
  const NewBookInfo({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.title,
              style: Theme.of(context).textTheme.labelSmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              book.author,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset(IconConstants.calendar),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  book.publishDate.toPublishDateFormat,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

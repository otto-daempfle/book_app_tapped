import 'package:book_app_tapped/modules/home/widgets/content/sections/new/new_book_list_tile/new_book_list_tile.dart';
import 'package:book_app_tapped/provider/book_data/book_list/new_books_list_provider.dart';
import 'package:book_app_tapped/utils/dialog/snack_bar.dart';
import 'package:book_app_tapped/widgets/divider/base_divider.dart';
import 'package:book_app_tapped/widgets/loading/base_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewSectionSliver extends ConsumerWidget {
  const NewSectionSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newBooks = ref.watch(newBooksListProvider);
    return newBooks.when(
      data: (books) {
        //Empty View
        if (books.isEmpty) {
          return const SliverFillRemaining(
            child: Center(child: Text('No New Books')),
          );
        }

        return SliverList.separated(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return NewBookListTile(
              book: books[index],
              onTap: () {
                HapticFeedback.heavyImpact();
                showSnackBar(
                  context,
                  'On New Book ${books[index].title} tapped',
                );
              },
            );
          },
          separatorBuilder: (context, index) => const BaseDivider(
            height: 10,
          ),
        );
      },
      error: (e, s) => SliverFillRemaining(
        child: Center(
          child: Text(e.toString()),
        ),
      ),
      loading: () => const SliverFillRemaining(child: BaseLoadingIndicator()),
    );
  }
}

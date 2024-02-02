import 'package:book_app_tapped/modules/home/widgets/content/sections/continue/continue_book_card/continue_book_card.dart';
import 'package:book_app_tapped/provider/book_data/book_list/cotinue_books_list_provider.dart';
import 'package:book_app_tapped/utils/dialog/snack_bar.dart';
import 'package:book_app_tapped/widgets/loading/base_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContinueSectionSliver extends ConsumerWidget {
  const ContinueSectionSliver({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final continueBooks = ref.watch(continueBooksListProvider);
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: Center(
          child: continueBooks.when(
            data: (books) {
              //Empty View
              if (books.isEmpty) {
                return Text(
                  'Noch kein Buch gelesen',
                  style: Theme.of(context).textTheme.bodyLarge,
                );
              }

              return ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: books.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ContinueBookCard(
                    book: books[index],
                    onTap: () {
                      HapticFeedback.mediumImpact();
                      showSnackBar(
                        context,
                        'On Continue ${books[index].title} tapped',
                      );
                    },
                  );
                },
              );
            },
            error: (e, s) => Text(e.toString()),
            loading: () => const BaseLoadingIndicator(),
          ),
        ),
      ),
    );
  }
}

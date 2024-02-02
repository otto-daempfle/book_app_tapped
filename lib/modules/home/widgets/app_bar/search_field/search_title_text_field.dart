import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/book_suggestion_list_tile/book_suggestion_list_tile.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/search_text_field.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/search_title_text_field/search_suggestion_decoration.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/search_title_text_field/search_suggestion_empty_widget.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/search_title_text_field/search_suggestion_list_view.dart';
import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/search_title_text_field/search_suggestion_loading_widget.dart';
import 'package:book_app_tapped/provider/book_data/seach/search_book_provider.dart';
import 'package:book_app_tapped/provider/modules/home/search_focus_node_provider.dart';
import 'package:book_app_tapped/provider/modules/home/search_text_provider.dart';
import 'package:book_app_tapped/utils/dialog/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchTitleTextField extends ConsumerWidget {
  const SearchTitleTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchText = ref.watch(searchTextProvider);
    return TypeAheadField<Book>(
      focusNode: ref.watch(searchFocusNode),
      debounceDuration: const Duration(milliseconds: 350),
      hideKeyboardOnDrag: false,
      hideOnEmpty: searchText.isEmpty,
      hideOnUnfocus: true,
      offset: Offset.zero,
      suggestionsCallback: (searchText) async {
        ref.read(searchTextProvider.notifier).setSearchText(searchText);

        if (searchText.isEmpty) return [];

        final books = await ref.read(searchBooksProvider(searchText).future);
        return books;
      },
      onSelected: (book) {
        FocusManager.instance.primaryFocus?.unfocus();
        showSnackBar(context, 'On Search ${book.title} tapped');
      },
      builder: ((context, controller, focusNode) =>
          SearchTextField(controller: controller, focusNode: focusNode)),
      itemBuilder: (context, book) => BookSuggestionListTile(book: book),
      listBuilder: (context, children) =>
          SearchSuggestionListView(children: children),
      loadingBuilder: (context) => const SearchSuggestionLoadingWidget(),
      emptyBuilder: (context) => const SearchSuggestionEmptyWidget(),
      decorationBuilder: (context, child) =>
          SearchSuggestionDecoration(child: child),
    );
  }
}

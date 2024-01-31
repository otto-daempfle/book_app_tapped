import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchTextProvider = StateNotifierProvider<SearchTextNotifier, String>(
  (ref) => SearchTextNotifier(),
);

class SearchTextNotifier extends StateNotifier<String> {
  SearchTextNotifier() : super('');

  void setSearchText(String searchText) {
    state = searchText;
  }
}

import 'package:book_app_tapped/widgets/loading/base_loading_indicator.dart';
import 'package:flutter/material.dart';

class SearchSuggestionLoadingWidget extends StatelessWidget {
  const SearchSuggestionLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 80,
      child: BaseLoadingIndicator(),
    );
  }
}

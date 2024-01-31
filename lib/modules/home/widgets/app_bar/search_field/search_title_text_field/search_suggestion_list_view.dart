import 'package:book_app_tapped/widgets/divider/base_divider.dart';
import 'package:flutter/material.dart';

class SearchSuggestionListView extends StatelessWidget {
  const SearchSuggestionListView({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: children.length,
      itemBuilder: (context, index) => children[index],
      separatorBuilder: (context, index) => const BaseDivider(
        height: 1,
      ),
    );
  }
}

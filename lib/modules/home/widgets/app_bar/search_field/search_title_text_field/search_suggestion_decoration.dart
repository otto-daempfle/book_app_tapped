import 'package:flutter/material.dart';

class SearchSuggestionDecoration extends StatelessWidget {
  const SearchSuggestionDecoration({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      elevation: 5,
      child: child,
    );
  }
}

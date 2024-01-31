import 'package:flutter/material.dart';

class SearchSuggestionEmptyWidget extends StatelessWidget {
  const SearchSuggestionEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Center(
        child: Text(
          'Keine Buchtreffer gefunden',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
    );
  }
}

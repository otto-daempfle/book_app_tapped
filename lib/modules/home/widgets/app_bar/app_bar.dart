import 'package:book_app_tapped/modules/home/widgets/app_bar/search_field/search_title_text_field.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Theme.of(context).colorScheme.background,
      scrolledUnderElevation: 3,
      elevation: 3,
      shadowColor: Theme.of(context).colorScheme.shadow,
      titleSpacing: 0,
      title: const SearchTitleTextField(), // Reuse with const
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

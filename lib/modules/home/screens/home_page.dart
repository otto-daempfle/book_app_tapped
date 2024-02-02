import 'package:book_app_tapped/modules/home/widgets/app_bar/app_bar.dart';
import 'package:book_app_tapped/modules/home/widgets/bottom_bar/bottom_navigation_bar.dart';
import 'package:book_app_tapped/modules/home/widgets/content/home_page_body.dart';
import 'package:book_app_tapped/provider/modules/home/search_focus_node_provider.dart';
import 'package:book_app_tapped/provider/modules/home/search_focused_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          ref.read(searchFocusNode).unfocus();
        },
        child: IgnorePointer(
          ignoring: ref.watch(searchFocusedProvider),
          child: const HomePageBody(),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}

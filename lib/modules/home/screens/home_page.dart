import 'package:book_app_tapped/modules/home/widgets/app_bar/app_bar.dart';
import 'package:book_app_tapped/modules/home/widgets/bottom_bar/bottom_navigation_bar.dart';
import 'package:book_app_tapped/modules/home/widgets/content/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // Unfocus the primary focus when the body is tapped
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: IgnorePointer(
          // Ignore pointer events when primary focus has focus
          ignoring: FocusManager.instance.primaryFocus?.hasFocus ?? false,
          child: const HomePageBody(),
        ),
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}

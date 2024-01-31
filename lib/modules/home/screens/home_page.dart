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
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: const HomePageBody(),
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}

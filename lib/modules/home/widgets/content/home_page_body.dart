import 'package:book_app_tapped/modules/home/widgets/content/sections/continue/continue_section.dart';
import 'package:book_app_tapped/modules/home/widgets/content/sections/new/new_section.dart';
import 'package:book_app_tapped/widgets/header/sliver_section_header.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      cacheExtent: 500,
      slivers: [
        SliverSeactionHeader(
          title: 'Continue',
          bottomPadding: 15,
        ),
        ContinueSectionSliver(),
        SliverSeactionHeader(
          title: 'New',
          bottomPadding: 0,
        ),
        NewSectionSliver(),
      ],
    );
  }
}

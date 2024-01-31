import 'package:book_app_tapped/utils/constants/icon_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: false,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        hintText: 'Search for something',
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        border: InputBorder.none,
        suffixIconConstraints:
            const BoxConstraints(minHeight: 20, minWidth: 20),
        suffixIcon: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 5, right: 35, bottom: 15),
          child: SvgPicture.asset(IconConstants.search),
        ),
      ),
      controller: controller,
      focusNode: focusNode,
    );
  }
}

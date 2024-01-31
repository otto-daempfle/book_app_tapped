import 'package:flutter/material.dart';

class BaseDivider extends StatelessWidget {
  const BaseDivider({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? 20,
      thickness: 1,
      endIndent: 20,
      indent: 20,
      color: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? const Color.fromARGB(159, 109, 109, 109)
          : const Color.fromRGBO(225, 235, 232, 1),
    );
  }
}

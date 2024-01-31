import 'package:flutter/material.dart';

class SliverSeactionHeader extends StatelessWidget {
  const SliverSeactionHeader({
    super.key,
    required this.title,
    this.bottomPadding,
  });

  final String title;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            EdgeInsets.only(left: 20.0, bottom: bottomPadding ?? 5, top: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}

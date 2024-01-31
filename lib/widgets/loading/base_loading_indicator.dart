import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BaseLoadingIndicator extends StatelessWidget {
  const BaseLoadingIndicator({Key? key, this.dimension}) : super(key: key);

  final double? dimension;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.square(
        dimension: dimension ?? 50,
        child: LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          colors: [Theme.of(context).colorScheme.secondary],
        ),
      ),
    );
  }
}

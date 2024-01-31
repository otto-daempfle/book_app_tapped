import 'package:book_app_tapped/utils/extensions/string_extensions.dart';
import 'package:book_app_tapped/widgets/loading/base_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    super.key,
    required this.url,
    this.height = 80,
    this.width = 80,
    this.shape = BoxShape.rectangle,
    this.borderRadius = 10,
  });

  final String url;
  final double height;
  final double width;
  final BoxShape shape;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: shape,
        borderRadius: shape == BoxShape.circle
            ? null
            : BorderRadius.circular(borderRadius),
      ),
      child: CachedNetworkImage(
        imageUrl: url.toImageUrlWithSize(width.toInt(), height.toInt()),
        placeholder: (context, url) => const BaseLoadingIndicator(
          dimension: 10,
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
      ),
    );
  }
}

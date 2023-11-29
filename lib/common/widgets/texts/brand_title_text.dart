import 'package:flutter/material.dart';
import '../../../utils/constants/enums.dart';

class BrandTitleText extends StatelessWidget {
  const BrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Text(
          title,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          //check Brand size and set the style
          style: brandTextSizes == TextSizes.small
              ? textTheme.labelMedium!.apply(color: color)
              : brandTextSizes == TextSizes.medium
                  ? textTheme.bodyLarge!.apply(color: color)
                  : brandTextSizes == TextSizes.large
                      ? textTheme.titleLarge!.apply(color: color)
                      : textTheme.bodyMedium!.apply(color: color),
        ),
      ],
    );
  }
}

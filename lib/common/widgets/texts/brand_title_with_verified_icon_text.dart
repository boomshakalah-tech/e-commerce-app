import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:e_commerc_app/common/widgets/texts/brand_title_text.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/sizes.dart';

class CustomBrandTitlteWithVerifiedIcon extends StatelessWidget {
  const CustomBrandTitlteWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxlines = 1,
    required this.title,
    this.iconColor = CustomColor.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
    this.iconSize = CustomSizes.iconXs,
  });

  final String title;
  final int maxlines;
  final double? iconSize;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        BrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxlines,
          textAlign: textAlign,
          brandTextSizes: brandTextSizes,
        ),
        const SizedBox(width: CustomSizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: iconSize,
        ),
      ],
    );
  }
}

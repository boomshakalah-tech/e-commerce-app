import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class CustomRoundedImage extends StatelessWidget {
  const CustomRoundedImage({
    super.key,
    this.border,
    this.onPressed,
    this.padding,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    required this.imageUrl,
    this.borderRaduis = CustomSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final double borderRaduis;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
            border: border,
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRaduis)),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(CustomSizes.md)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}

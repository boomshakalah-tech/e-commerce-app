import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/contianers/circular_container.dart';

class CustomVerticalImageText extends StatelessWidget {
  const CustomVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor,
    this.onTap,
    this.imageColor,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final Color? imageColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: CustomSizes.spaceBetweenItems),
        child: Column(
          children: [
            CustomRoundedContainer(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CustomSizes.sm),
              backgroundColor: backgroundColor ?? (isDark ? Colors.black : Colors.white),
              radius: 100,
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: imageColor ?? (isDark ? Colors.white : Colors.black),
                ),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
            SizedBox(
              width: 55,
              child: Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

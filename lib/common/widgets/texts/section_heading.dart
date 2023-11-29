import 'package:flutter/material.dart';

class CustomSectionHeading extends StatelessWidget {
  const CustomSectionHeading({
    super.key,
    required this.titleText,
    this.buttonTitleText = 'View all',
    this.onPressed,
    this.showActionButton = true,
    this.textColor,
  });

  final String titleText, buttonTitleText;
  final bool showActionButton;
  final Color? textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPressed,
            child: Text(buttonTitleText),
          ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFuntions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? CustomColor.darkGrey : CustomColor.grey,
            thickness: 0.5,
            indent: 60.0,
            endIndent: 5.0,
          ),
        ),
        Text(text, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? CustomColor.darkGrey : CustomColor.grey,
            thickness: 0.5,
            indent: 5.0,
            endIndent: 60.0,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utitlity.dart';

class CustomRatingProgressIndicator extends StatelessWidget {
  const CustomRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 1, child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 10,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: CustomDeviceUtility.getSreenWidth() * 0.5,
            height: 10,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: value,
                valueColor: const AlwaysStoppedAnimation<Color>(CustomColor.primary),
                backgroundColor: CustomColor.grey,
              ),
            ),
          ),
        )
      ],
    );
  }
}

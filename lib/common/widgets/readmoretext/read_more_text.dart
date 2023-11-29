import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomReadMoreText extends StatelessWidget {
  const CustomReadMoreText({
    super.key,
    required this.comment,
  });

  final String comment;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      comment,
      trimMode: TrimMode.Line,
      trimExpandedText: '\n Show Less',
      moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
      lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
    );
  }
}

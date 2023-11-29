import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/circular_container.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColorNotNull = CustomHelperFuntions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColorNotNull ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? CustomColor.white : null),
        avatar: isColorNotNull
            ? CustomRoundedContainer(
                width: 50,
                height: 50,
                backgroundColor: CustomHelperFuntions.getColor(text)!,
              )
            : null,
        labelPadding: isColorNotNull ? const EdgeInsets.all(0) : null,
        padding: isColorNotNull ? const EdgeInsets.all(0) : null, // mlae the icon center
        shape: isColorNotNull ? const CircleBorder() : null,
        // selectedColor: CustomHelperFuntions.getColor(text),
        backgroundColor: isColorNotNull ? CustomHelperFuntions.getColor(text)! : null,
      ),
    );
  }
}

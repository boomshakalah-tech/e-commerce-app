import 'package:e_commerc_app/common/widgets/custom_shapes/curved_edges/cureved_edges.dart';
import 'package:flutter/material.dart';

class CustomCurvedEdgesWidget extends StatelessWidget {
  const CustomCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEges(),
      child: child,
    );
  }
}

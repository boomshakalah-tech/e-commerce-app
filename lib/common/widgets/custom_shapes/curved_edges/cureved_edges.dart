import 'package:flutter/material.dart';

class CustomCurvedEges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);

    final firstStart = Offset(0, size.height - 20);
    final firstEnd = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    final secondStart = Offset(0, size.height - 20);
    final secondEnd = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    final thirdStart = Offset(size.width, size.height - 20);
    final thirEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirEnd.dx, thirEnd.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

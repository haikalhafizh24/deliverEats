import 'dart:math';

import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;
  final BorderRadius borderRadius;

  DashedBorderPainter({
    this.color = Colors.black,
    this.strokeWidth = 1.0,
    this.gap = 5.0,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final Path path = Path();
    const double dashWidth = 5.0;

    // Top left corner
    path.addArc(
        Rect.fromLTWH(
            0, 0, borderRadius.topLeft.x * 2, borderRadius.topLeft.y * 2),
        pi,
        pi / 2);

    // Top edge
    for (double i = borderRadius.topLeft.x;
        i < size.width - borderRadius.topRight.x;
        i += dashWidth + gap) {
      path.moveTo(i, 0);
      path.lineTo(min(i + dashWidth, size.width - borderRadius.topRight.x), 0);
    }

    // Top right corner
    path.addArc(
        Rect.fromLTWH(size.width - borderRadius.topRight.x * 2, 0,
            borderRadius.topRight.x * 2, borderRadius.topRight.y * 2),
        3 * pi / 2,
        pi / 2);

    // Right edge
    for (double i = borderRadius.topRight.y;
        i < size.height - borderRadius.bottomRight.y;
        i += dashWidth + gap) {
      path.moveTo(size.width, i);
      path.lineTo(size.width,
          min(i + dashWidth, size.height - borderRadius.bottomRight.y));
    }

    // Bottom right corner
    path.addArc(
        Rect.fromLTWH(
            size.width - borderRadius.bottomRight.x * 2,
            size.height - borderRadius.bottomRight.y * 2,
            borderRadius.bottomRight.x * 2,
            borderRadius.bottomRight.y * 2),
        0,
        pi / 2);

    // Bottom edge
    for (double i = size.width - borderRadius.bottomRight.x;
        i > borderRadius.bottomLeft.x;
        i -= dashWidth + gap) {
      path.moveTo(i, size.height);
      path.lineTo(max(i - dashWidth, borderRadius.bottomLeft.x), size.height);
    }

    // Bottom left corner
    path.addArc(
        Rect.fromLTWH(0, size.height - borderRadius.bottomLeft.y * 2,
            borderRadius.bottomLeft.x * 2, borderRadius.bottomLeft.y * 2),
        pi / 2,
        pi / 2);

    // Left edge
    for (double i = size.height - borderRadius.bottomLeft.y;
        i > borderRadius.topLeft.y;
        i -= dashWidth + gap) {
      path.moveTo(0, i);
      path.lineTo(0, max(i - dashWidth, borderRadius.topLeft.y));
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

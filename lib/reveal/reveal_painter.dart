import 'package:flutter/material.dart';
import 'dart:math';

class RevealPainter extends CustomPainter {
  double _fraction = 0.0;
  Size _screenSize;
  Color color;

  RevealPainter(this._fraction, this._screenSize, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    var finalRadius = sqrt(pow(_screenSize.width / 2, 2) +
        pow(_screenSize.height - 32.0 - 48.0, 2));
    var radius = 24.0 + finalRadius * _fraction;

    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(RevealPainter oldDelegate) {
    return oldDelegate._fraction != _fraction;
  }
}

import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.moveTo(10, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyPainter extends CustomPainter {
  MyPainter({required this.color, this.fill = false, this.twoSlope = false});

  Color color;
  bool fill;
  bool twoSlope;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = fill ? PaintingStyle.fill : PaintingStyle.stroke
      ..strokeWidth = 1;
    var path = Path();
    path.moveTo(10, 0);
    path.lineTo(size.width, 0);
    twoSlope
        ? path.lineTo(size.width - 10, size.height)
        : path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

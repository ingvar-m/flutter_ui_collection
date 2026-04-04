import 'package:flutter/cupertino.dart';

class LoginShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = 15.0;

    path.moveTo(0, size.height * 0.45);
    path.lineTo(size.width * 0.5 - radius, size.height * 0.25 + (radius * 0.5));
    path.quadraticBezierTo(
        size.width * 0.5,
        size.height * 0.25,
        size.width * 0.5 + radius,
        size.height * 0.25 + (radius * 0.5));
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}
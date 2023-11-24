import 'package:flutter/material.dart';

class SlopingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    path.moveTo(size.width, size.height - 450.0);
    path.lineTo(
        size.width, size.height * 0.9);
    path.lineTo(0.0, size.height);
    path.lineTo(0, size.height * 0.1);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
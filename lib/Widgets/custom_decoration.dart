import 'package:flutter/material.dart';

class CustomDecoration {
  static final ShapeDecoration shapeDecoration = ShapeDecoration(
    color: const Color(0xFFFBFAFA),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    shadows: const [
      BoxShadow(
        color: Color(0x3F000000),
        blurRadius: 4,
        offset: Offset(0, 4),
        spreadRadius: 0,
      )
    ],
  );
}

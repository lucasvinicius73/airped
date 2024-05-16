import 'package:flutter/material.dart';

class CustomButtonCalculadora extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Color color;
  const CustomButtonCalculadora(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 37,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}

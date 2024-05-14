import 'package:flutter/material.dart';

class TotResult extends StatelessWidget {
  final String firstText;
  final String colorText;
  final String thirdText;
  final String result;
  final Color color;
  const TotResult(
      {super.key,
      required this.result,
      required this.firstText,
      required this.colorText,
      required this.thirdText,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 130,
          child: RichText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: firstText,
                  style: const TextStyle(
                    color: Color(0xFF1C72C2),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: colorText,
                  style: TextStyle(
                    color: color,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: thirdText,
                  style: const TextStyle(
                    color: Color(0xFF1C72C2),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )
              ])),
        ),
        Container(
          width: 130,
          height: 46,
          decoration: ShapeDecoration(
            color: const Color(0xFFF1F5F4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
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
          child: Center(
            child: Text(result),
          ),
        )
      ],
    );
  }
}

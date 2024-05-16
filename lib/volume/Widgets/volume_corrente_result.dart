import 'package:flutter/material.dart';

class VolumeCorrenteResult extends StatefulWidget {
  final String title;
  final String result;
  const VolumeCorrenteResult(
      {super.key, required this.title, required this.result});

  @override
  State<VolumeCorrenteResult> createState() => _VolumeCorrenteResultState();
}

class _VolumeCorrenteResultState extends State<VolumeCorrenteResult> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${widget.title} ml/Kg",
          style: const TextStyle(
            color: Color(0xFF67ABEB),
            fontSize: 18,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        Container(
          width: 128,
          height: 46,
          decoration: ShapeDecoration(
            color: const Color(0xFFFBFAFA),
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
            child: Text(widget.result == '' ? '' : "${widget.result} ml/Kg"),
          ),
        )
      ],
    );
  }
}

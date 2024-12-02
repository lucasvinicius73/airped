import 'package:flutter/material.dart';

class CustomTitlePage extends StatelessWidget {
  const CustomTitlePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 500,
        //height: 80,
        child: Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: const TextStyle(
            color: Color(0xFF1C72C2),
            fontSize: 27,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ));
  }
}

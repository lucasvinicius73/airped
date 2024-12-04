import 'package:flutter/material.dart';

class TableContainer extends StatelessWidget {
  const TableContainer({required this.title, this.color, super.key});
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 60),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: color ?? Colors.white,
        // width: 80,
        child: Center(child: Text(title)),
      ),
    );
  }
}

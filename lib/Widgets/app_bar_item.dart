import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  final String title;
  final String navigator;
  const AppBarItem({super.key, required this.title, required this.navigator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: TextButton.icon(
        icon: const Icon(
          Icons.arrow_circle_right_outlined,
          color: Colors.white,
        ),
        label: SizedBox(
          width: 230,
          height: 20,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
        onPressed: () => Navigator.of(context).pushNamed(navigator),
      ),
    );
  }
}

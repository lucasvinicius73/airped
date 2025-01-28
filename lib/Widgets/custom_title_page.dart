import 'package:flutter/material.dart';

class CustomTitlePage extends StatelessWidget {
  const CustomTitlePage({super.key, required this.title, required this.icon});
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      width: 360,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            left: 0,
            child: Container(
              width: 360,
              height: 60,
              padding: const EdgeInsets.only(left: 68, right: 20),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF6EB6E6),
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: const TextStyle(
                    color: Color(0xFF1C72C2),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF6EB6E6),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    icon,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

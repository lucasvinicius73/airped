import 'package:flutter/material.dart';

class NewMenuButton extends StatelessWidget {
  const NewMenuButton({
    super.key,
    required this.title,
    required this.icon,
    required this.route,
    required this.color,
    this.isAboutButton = false,
  });
  final String title;
  final String icon;
  final String route;
  final Color color;
  final bool isAboutButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(route),
        child: Ink(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 65,
                  height: 65,
                  child: isAboutButton
                      ? const Icon(
                          Icons.help_outline,
                          color: Color(0xFF67ABEB),
                          size: 65,
                        )
                      : Image.asset(
                          icon,
                        ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    title,
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: isAboutButton
                          ? const Color(0xFFEFCA30)
                          : Colors.black87,
                      fontSize: 19,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

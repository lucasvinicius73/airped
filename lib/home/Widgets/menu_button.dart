import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String icon;
  final String route;
  final Color color;
  const MenuButton(
      {super.key,
      required this.title,
      required this.route,
      required this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Ink(
        child: Container(
          width: 165,
          height: 165,
          padding:
              const EdgeInsets.only(top: 16, left: 10, right: 10, bottom: 10),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(icon),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                //width: 140,
                child: Text(
                  title,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF67ABEB),
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () => Navigator.of(context).pushNamed(route),
    );
  }
}

import 'package:airped/Widgets/Drawer/drawer_controller.dart';
import 'package:airped/providers.dart';
import 'package:flutter/material.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerController = getIt<CustomDrawerController>();

    return InkWell(
      onTap: () {
        drawerController.changeIndex(6);
        Navigator.of(context).pushNamed('/about');
      },
      child: Container(
        width: 187,
        height: 47,
        decoration: ShapeDecoration(
          color: const Color(0xFFFBFAFA),
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
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.help_outline,
              color: Color(0xFF67ABEB),
              size: 22,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'Sobre',
              style: TextStyle(
                color: Color(0xFFEFCA30),
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

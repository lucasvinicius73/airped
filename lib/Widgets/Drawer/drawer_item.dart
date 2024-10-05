import 'package:airped/Widgets/Drawer/drawer_controller.dart';
import 'package:airped/providers.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String navigator;
  final int index;
  const DrawerItem(
      {super.key,
      required this.title,
      required this.navigator,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final controller = getIt<CustomDrawerController>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Container(
        decoration: ShapeDecoration(
          color: controller.indexPage == index ? Colors.white : null,
          shape: RoundedRectangleBorder(
            //side: const BorderSide(width: 1, color: Color(0x7FF1F5F4)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: TextButton.icon(
          icon: Icon(
            Icons.arrow_circle_right_outlined,
            color: controller.indexPage == index
                ? const Color(0xFF67ABEB)
                : Colors.white,
          ),
          label: SizedBox(
            width: 230,
            height: 20,
            child: Text(
              title,
              style: TextStyle(
                color: controller.indexPage == index
                    ? const Color(0xFF67ABEB)
                    : Colors.white,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          onPressed: controller.indexPage == index
              ? null
              : () {
                  controller.changeIndex(index);
                  Navigator.of(context).pushReplacementNamed(navigator);
                },
        ),
      ),
    );
  }
}

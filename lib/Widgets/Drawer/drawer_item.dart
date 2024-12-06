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
      child: ListenableBuilder(
        listenable: controller,
        builder: (context, child) => Container(
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
              width: double.infinity,
              //height: 40,

              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                  color: controller.indexPage == index
                      ? const Color(0xFF67ABEB)
                      : Colors.white,
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              ),
            ),
            onPressed: controller.indexPage == index
                ? null
                : () {
                    controller.changeIndex(index);
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(navigator);
                  },
          ),
        ),
      ),
    );
  }
}

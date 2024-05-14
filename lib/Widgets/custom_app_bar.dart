//import 'package:flutter/cupertino.dart';
import 'package:airped/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key});

  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 22, left: 21),
        child: SizedBox(
          width: 30,
          height: 30,
          child: IconButton(
            icon: const Icon(Icons.menu),
            color: const Color(0xFF67ABEB),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 22),
          child: SizedBox(
            width: 30,
            height: 30,
            child: IconButton(
                color: const Color(0xFF67ABEB),
                icon: const Icon(Icons.home_outlined),
                onPressed: () => Navigator.of(context)
                    .pushNamedAndRemoveUntil('/home', (route) => false)),
          ),
        )
      ],
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(top: 23),
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Air',
                style: TextStyle(
                  color: Color(0xFF1C72C2),
                  fontSize: 26,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              TextSpan(
                text: 'Ped',
                style: TextStyle(
                  color: Color(0xFFEFCA30),
                  fontSize: 26,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 71);
}

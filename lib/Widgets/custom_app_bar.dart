//import 'package:flutter/cupertino.dart';
import 'package:airped/Widgets/Drawer/drawer_controller.dart';
import 'package:airped/providers.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerController = getIt<CustomDrawerController>();

    return ListenableBuilder(
      listenable: drawerController,
      builder: (context, child) => AppBar(
        backgroundColor: const Color(0xFF6EB6E6),
        leading: Padding(
          padding: const EdgeInsets.only(top: 0, left: 21),
          child: SizedBox(
            width: 30,
            height: 30,
            child: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.white,
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        actions: [
          drawerController.indexPage > 0
              ? Padding(
                  padding: const EdgeInsets.only(top: 0, right: 22),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.home_outlined),
                        onPressed: () {
                          drawerController.changeIndex(0);
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/home', (route) => false);
                        }),
                  ),
                )
              : SizedBox()
        ],
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: GestureDetector(
              onTap: drawerController.indexPage == 0
                  ? null
                  : () {
                      drawerController.changeIndex(0);
                      Navigator.of(context)
                          .pushNamedAndRemoveUntil('/home', (route) => false);
                    },
              child: SizedBox(
                  height: 60,
                  child: Image.asset('assets/logoSemfundo.png',
                      fit: BoxFit.contain))),
        ),
        toolbarHeight: 80,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

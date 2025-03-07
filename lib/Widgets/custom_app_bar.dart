//import 'package:flutter/cupertino.dart';
import 'package:airped/Widgets/Drawer/drawer_controller.dart';
import 'package:airped/providers.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({this.isHome = false, super.key});
  final bool isHome;

  @override
  Widget build(BuildContext context) {
    final drawerController = getIt<CustomDrawerController>();

    return ListenableBuilder(
      listenable: drawerController,
      builder: (context, child) => AppBar(
        backgroundColor: const Color(0xFF6EB6E6),
        leading: isHome
            ? SizedBox(
                width: 30,
                height: 30,
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
            : SizedBox(
                width: 30,
                height: 30,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
        // actions: [
        //   !isHome
        //       ? SizedBox(
        //           width: 30,
        //           height: 30,
        //           child: IconButton(
        //               color: Colors.white,
        //               icon: const Icon(Icons.home_outlined),
        //               onPressed: () {
        //                 drawerController.changeIndex(0);
        //                 Navigator.of(context)
        //                     .pushNamedAndRemoveUntil('/home', (route) => false);
        //               }),
        //         )
        //       : const SizedBox()
        // ],
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: GestureDetector(
              onTap: isHome
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

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        Padding(
          padding: const EdgeInsets.only(top: 0, right: 22),
          child: SizedBox(
            width: 30,
            height: 30,
            child: IconButton(
                color: Colors.white,
                icon: const Icon(Icons.home_outlined),
                onPressed: () => Navigator.of(context)
                    .pushNamedAndRemoveUntil('/home', (route) => false)),
          ),
        )
      ],
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: GestureDetector(
            onTap: () => Navigator.of(context)
                .pushNamedAndRemoveUntil('/home', (route) => false),
            child: SizedBox(
                height: 60,
                child: Image.asset('assets/logoSemfundo.png',
                    fit: BoxFit.contain))),
      ),
      bottom: const PreferredSize(
        preferredSize: Size(390, 0),
        child: Divider(
          // Linha divisória
          color: Colors.white,
// Cor da linha
          height: 2.0, // Espessura da linha
        ),
      ),
      toolbarHeight: 80,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

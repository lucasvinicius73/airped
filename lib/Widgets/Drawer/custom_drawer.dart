import 'package:airped/Widgets/Drawer/drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF67ABEB),
      child: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ),
            const Center(
              child: Text(
                'Menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            const DrawerItem(
              index: 0,
              title: 'Volume Corrente',
              navigator: "/volume_corrente_page",
            ),
            const DrawerItem(
              index: 1,
              title: 'TOT e Ponto de Fixação',
              navigator: "/tot_pf_page",
            ),
            const DrawerItem(
              index: 2,
              title: 'CPAP e Cânula de TQT',
              navigator: "/cpap_tqt_page",
            ),
            const DrawerItem(
              index: 3,
              title: 'Desconforto Respiratório',
              navigator: "/desconforto_resp_page",
            ),
            const DrawerItem(
              index: 4,
              title: 'Sobre ',
              navigator: "/about",
            ),
          ],
        ),
      ),
    );
  }
}

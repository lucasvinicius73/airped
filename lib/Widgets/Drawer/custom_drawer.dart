import 'package:airped/Widgets/Drawer/drawer_controller.dart';
import 'package:airped/Widgets/Drawer/drawer_item.dart';
import 'package:airped/providers.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({this.isHome = false, super.key});
  final bool isHome;

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final controller = getIt<CustomDrawerController>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.isHome) {
        controller.changeIndex(0);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320,
      backgroundColor: const Color(0xFF67ABEB),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 20, left: 5, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.close),
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
              title: 'Tela Inicial',
              navigator: "/home",
            ),
            const DrawerItem(
              index: 1,
              title: 'Volume Corrente e \nFrequência Respiratória',
              navigator: "/volume_corrente_page",
            ),
            const DrawerItem(
              index: 2,
              title: 'Tubo Orotraqueal(TOT) e Fixação do TOT',
              navigator: "/tot_pf_page",
            ),
            const DrawerItem(
              index: 3,
              title: 'Pronga de CPAP Nasal e Cânula de Traqueostomia(TQT)',
              navigator: "/cpap_tqt_page",
            ),
            const DrawerItem(
              index: 4,
              title: 'Avaliação Respiratória',
              navigator: "/desconforto_resp_page",
            ),
            const DrawerItem(
              index: 5,
              title: 'Parâmetros Ventilatórios Iniciais',
              navigator: "/parametros_page",
            ),
            const DrawerItem(
              index: 6,
              title: 'Sobre ',
              navigator: "/about",
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                height: 80,
                width: 80,
                child: Image.asset("assets/logoSemfundo.png"),
              ),
            ),
            // Center(
            //   child: Container(
            //     padding: const EdgeInsets.all(5),
            //     constraints: const BoxConstraints(maxWidth: 200),
            //     child: Row(
            //       children: [
            //         SizedBox(
            //           height: 65,
            //           width: 55,
            //           child: Image.asset("assets/about/brasaouepa.png"),
            //         ),
            //         const Spacer(),
            //         SizedBox(
            //           height: 60,
            //           width: 55,
            //           child: Image.asset("assets/about/logoCipe.png"),
            //         ),
            //         const Spacer(),
            //         SizedBox(
            //           height: 60,
            //           width: 55,
            //           child: Image.asset("assets/about/logoCapes.png"),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

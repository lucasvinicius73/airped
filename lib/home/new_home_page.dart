import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/home/Widgets/about_button.dart';
import 'package:airped/home/Widgets/new_menu_button.dart';
import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF67ABEB),
      appBar: const CustomAppBar(
        isHome: true,
      ),
      drawer: const CustomDrawer(
        isHome: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Color(0xFF67ABEB)])),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "PROCEDIMENTOS",
                  style: TextStyle(
                    color: Color(0xFF1C72C2),
                    fontSize: 34,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                const NewMenuButton(
                  title: "Volume Corrente e Frequência Respiratória",
                  route: "/volume_corrente_page",
                  icon: 'assets/home/pulmao.png',
                  color: Color(0xFF6AC7DE),
                  index: 1,
                ),
                const NewMenuButton(
                  title: "Tubo Orotraqueal (TOT) e\nFixação do TOT",
                  route: "/tot_pf_page",
                  icon: 'assets/home/tot.png',
                  color: Color(0xFFEBEC95),
                  index: 2,
                ),
                const NewMenuButton(
                  title:
                      "Pronga de CPAP Nasal e\nCânula de Traqueostomia (TQT)",
                  route: "/cpap_tqt_page",
                  icon: 'assets/home/tqt.png',
                  color: Color(0xFFF9C4E3),
                  index: 3,
                ),
                const NewMenuButton(
                  title: "Avaliação Respiratória",
                  route: "/desconforto_resp_page",
                  icon: 'assets/home/baby.png',
                  color: Color(0xFFBDDD80),
                  index: 4,
                ),
                const NewMenuButton(
                  title: "Parâmetros \nVentilatórios Iniciais",
                  route: "/parametros_page",
                  icon: 'assets/home/pc.png',
                  color: Color(0xFFD6A0F5),
                  index: 5,
                ),
                Container(
                  height: 160,
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding: const EdgeInsets.only(top: 19, bottom: 33),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFBFAFA),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0x7FF1F5F4)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Column(
                      children: [
                        Text(
                          "Informações",
                          style: TextStyle(
                            color: Color(0xFF1C72C2),
                            fontSize: 34,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Spacer(),
                        AboutButton()
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 65,
                        width: 55,
                        child: Image.asset("assets/about/brasaouepa.png"),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: 55,
                        child: Image.asset("assets/about/logoCipe.png"),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: 55,
                        child: Image.asset("assets/about/logoCapes.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

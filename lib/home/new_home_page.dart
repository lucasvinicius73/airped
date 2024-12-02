import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/home/Widgets/new_menu_button.dart';
import 'package:flutter/material.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6EB6E6),
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
        bottom: const PreferredSize(
          preferredSize: Size(390, 17),
          child: Divider(
            // Linha divisória
            color: Color(0xFFF1F5F4), // Cor da linha
            height: 1.0, // Espessura da linha
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white, Color(0xFF67ABEB)])),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
          child: Center(
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  decoration: CustomDecoration.shapeDecoration,
                  child: const Column(
                    children: [
                      Text(
                        "PROCEDIMENTOS",
                        style: TextStyle(
                          color: Color(0xFF1C72C2),
                          fontSize: 34,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      NewMenuButton(
                        title: "• Volume Corrente \n• Frequencia Respiratoria",
                        route: "/volume_corrente_page",
                        icon: 'assets/home/pulmao.png',
                        color: Color(0xFF6AC7DE),
                      ),
                      NewMenuButton(
                        title: "• Tubo Orotraqueal(TOT)\n• Fixação do TOT",
                        route: "/tot_pf_page",
                        icon: 'assets/home/tot.png',
                        color: Color(0xFFEBEC95),
                      ),
                      NewMenuButton(
                        title:
                            "• Pronga de CPAP Nasal\n• Cânula de Traqueostomia(TQT)",
                        route: "/cpap_tqt_page",
                        icon: 'assets/home/tqt.png',
                        color: Color(0xFFF9C4E3),
                      ),
                      NewMenuButton(
                        title: "• Avaliação Respiratoria",
                        route: "/desconforto_resp_page",
                        icon: 'assets/home/baby.png',
                        color: Color(0xFFBDDD80),
                      ),
                      NewMenuButton(
                        title: "• Parametros Ventilatórios Iniciais",
                        route: "/desconforto_resp_page",
                        icon: 'assets/home/baby.png',
                        color: Color(0xFFE1EEFE),
                      ),
                      NewMenuButton(
                        title: "Sobre",
                        route: "/about",
                        icon: 'assets/home/about.png',
                        color: Colors.white,
                        isAboutButton: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

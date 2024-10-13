import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/home/Widgets/menu_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 23),
          child: Center(
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 20),
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
                      Row(
                        children: [
                          MenuButton(
                            title: "Volume\n corrente",
                            route: "/volume_corrente_page",
                            icon: 'assets/home/pulmao.png',
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          MenuButton(
                            title: "Tubo Orotraqueal Ponto de Fixação",
                            route: "/tot_pf_page",
                            icon: 'assets/home/tot.png',
                            color: Color(0xFFFCF6BD),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          MenuButton(
                            title: "Pressão Positiva Cânula Traqueostomia",
                            route: "/cpap_tqt_page",
                            icon: 'assets/home/tqt.png',
                            color: Color(0xFFA9DEF9),
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          MenuButton(
                            title: "Desconforto Respiratorio",
                            route: "/desconforto_resp_page",
                            icon: 'assets/home/baby.png',
                            color: Color(0xFFD0F4DE),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 347,
                  height: 160,
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
                  child: Column(
                    children: [
                      const Text(
                        "Informações",
                        style: TextStyle(
                          color: Color(0xFF1C72C2),
                          fontSize: 34,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () => Navigator.of(context).pushNamed('/about'),
                        child: Container(
                          width: 187,
                          height: 47,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFBFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.help_outline,
                                color: Color(0xFF67ABEB),
                                size: 22,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Sobre',
                                style: TextStyle(
                                  color: Color(0xFFEFCA30),
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
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

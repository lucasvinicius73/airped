import 'package:airped/home/Widgets/menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text.rich(
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
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              padding:
                  const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 30),
              decoration: ShapeDecoration(
                color: const Color(0xFFFBFAFA),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x7FF1F5F4)),
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
                    "PROCEDIMENTOS",
                    style: TextStyle(
                      color: Color(0xFF1C72C2),
                      fontSize: 34,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: const [
                        MenuButton(
                          title: "Volume corrente",
                          route: "/volume_corrente_page",
                          icon: 'assets/home/pulmao.png',
                          color: Colors.white,
                        ),
                        MenuButton(
                          title: "TOT e Ponto de Fixação",
                          route: "/tot_pf_page",
                          icon: 'assets/home/tot.png',
                          color: Color(0xFFFCF6BD),
                        ),
                        MenuButton(
                          title: "CPAP e Candula de TQT",
                          route: "/cpap_tqt_page",
                          icon: 'assets/home/tqt.png',
                          color: Color(0xFFA9DEF9),
                        ),
                        MenuButton(
                          title: "Desconforto Respiratorio",
                          route: "/desconforto_resp_page",
                          icon: 'assets/home/baby.png',
                          color: Color(0xFFD0F4DE),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.only(top: 19, bottom: 33),
              decoration: ShapeDecoration(
                color: const Color(0xFFFBFAFA),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0x7FF1F5F4)),
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
                        color: Color(0xFFFBFAFA),
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
                          Icon(Icons.help),
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
    );
  }
}

import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/parametros_ventilatorios/widgets/table_container.dart';
import 'package:flutter/material.dart';

class ParametrosVentilatorios extends StatelessWidget {
  const ParametrosVentilatorios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(),
      body: Container(
          padding:
              const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 36),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white,
                Color(0xFFE1EEFE),
                Color(0xFFE1EEFE),
              ])),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const CustomTitlePage(title: 'Parâmetros Ventilatórios Iniciais'),
            const SizedBox(height: 28),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFF2F8FF),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Column(
                  children: [
                    Text(
                        textAlign: TextAlign.center,
                        "PRESSÃO CONTROLADA= 10 A 15 cmH2O\nVOLUME CORRENTE= 6ML/Kg\nPEEP= 5 A 6 cmH2O\nFiO2 para SpO2> 92% (> 90% em prematuros)")
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 300),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableContainer(
                        title: "IDADE",
                        color: Color(0xFF6DC6DE),
                      ),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(
                        title: "FR (irpm)",
                        color: Color(0xFF6DC6DE),
                      ),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(
                        title: "T Insp (seg)",
                        color: Color(0xFF6DC6DE),
                      ),
                    ],
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableContainer(title: "RNT"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "30 a 50"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "0,40 a 0,45"),
                    ],
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableContainer(title: "< 2 ANOS"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "25 a 30"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "0,45 a 0,60"),
                    ],
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableContainer(title: "2 a 5 ANOS"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "20 a 25"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "0,60 a 0,70"),
                    ],
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableContainer(title: "5 a 12 ANOS"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "16 a 20"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "0,70 a 0,80"),
                    ],
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableContainer(title: "> 12 ANOS"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "12 a 16"),
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 2,
                          width: 1,
                        ),
                      ),
                      TableContainer(title: "0,80 a 1,20"),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    constraints: const BoxConstraints(maxWidth: 300),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F8FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                        textAlign: TextAlign.center,
                        "Obs.: Sugestão de  parâmetros ventilatórios admissionais, lembrando que devem sempre ser ajustados individualmente."),
                  ),
                ),
                Positioned(
                    top: 22,
                    child: SizedBox(
                        width: 40, child: Image.asset("assets/warning.png"))),
              ],
            )
          ])),
    );
  }
}

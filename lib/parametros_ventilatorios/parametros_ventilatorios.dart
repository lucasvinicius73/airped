import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/parametros_ventilatorios/widgets/table_container.dart';
import 'package:flutter/material.dart';

class ParametrosVentilatorios extends StatelessWidget {
  const ParametrosVentilatorios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: const Color(0xFFD6A0F5),
      body: SingleChildScrollView(
        child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 36),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white,
                  Color(0xFFD6A0F5),
                  Color(0xFFD6A0F5),
                ])),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomTitlePage(
                    title: 'Parâmetros \nVentilatórios Iniciais',
                    icon: 'assets/title/pc.png',
                  ),
                  const SizedBox(height: 28),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    decoration: CustomDecoration.shapeDecoration,
                    child: Column(
                      children: [
                        Container(
                          constraints: const BoxConstraints(maxWidth: 350),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                        children: [
                                      TextSpan(text: "Pressão Controlada: "),
                                      TextSpan(
                                          text: "10 a 15 cm H2O",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(text: "\nVolume Corrente: "),
                                      TextSpan(
                                          text: "6ML/Kg",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(text: "\nPeep: "),
                                      TextSpan(
                                          text: "5 a 6 cm H2O",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: "\nFiO2",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(text: " para "),
                                      TextSpan(
                                          text: "SpO2 > 90%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ])),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          constraints: const BoxConstraints(maxWidth: 350),
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
                                    color: Color(0xFFA3D8F4),
                                    isBold: true,
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
                                    color: Color(0xFFA3D8F4),
                                    isBold: true,
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
                                    color: Color(0xFFA3D8F4),
                                    isBold: true,
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
                        const SizedBox(
                          height: 10,
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
                              vertical: 20, horizontal: 15),
                          constraints: const BoxConstraints(maxWidth: 400),
                          decoration: CustomDecoration.shapeDecoration,
                          child: const Text(
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              "Obs.: Sugestão de  parâmetros ventilatórios admissionais, lembrando que devem sempre ser ajustados individualmente."),
                        ),
                      ),
                      Positioned(
                          top: 22,
                          child: SizedBox(
                              width: 40,
                              child: Image.asset("assets/warning.png"))),
                    ],
                  )
                ])),
      ),
    );
  }
}

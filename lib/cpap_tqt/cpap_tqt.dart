import 'package:airped/Widgets/aviso.dart';
import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/Widgets/youtube_button.dart';
import 'package:airped/calculadora/calculadora.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/cpap_tqt/cpap_tqt_controller.dart';
import 'package:airped/providers.dart';
import 'package:airped/widget_keys.dart';
import 'package:flutter/material.dart';

class CpapTqtPage extends StatelessWidget {
  const CpapTqtPage({super.key});

  @override
  Widget build(BuildContext context) {
    final calculadoraController = getIt<CalculadoraController>();
    final controller = getIt<CpapTqtController>();

    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFF9C4E3),
      body: SingleChildScrollView(
        child: ListenableBuilder(
          listenable: controller,
          builder: (context, child) => Center(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  top: 25, left: 15, right: 15, bottom: 36),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white,
                    Color(0xFFF9C4E3),
                    Color(0xFFF9C4E3)
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomTitlePage(
                    title:
                        'Pronga de CPAP Nasal e\nCânula de Traqueostomia (TQT)',
                    icon: 'assets/title/tqt.png',
                  ),
                  const Aviso(),
                  const SizedBox(height: 25),
                  Calculadora(
                      isRealWeight: true,
                      onPressedReset: () {
                        calculadoraController.reset();
                        controller.reset();
                      },
                      onChanged: (p0) {
                        if (calculadoraController.idade.text != '' &&
                            calculadoraController.altura.text != '' &&
                            calculadoraController.pesoReal.text != '') {
                          String idade = calculadoraController.idade.text;
                          if (calculadoraController.isYear == false) {
                            idade =
                                '${double.parse(calculadoraController.idade.text) / 12}';
                          }
                          calculadoraController.calcularPesoIdeal(
                              idade,
                              calculadoraController.altura.text,
                              calculadoraController.sexo);

                          controller.calcularTamCanulaCPAP(
                              double.parse(calculadoraController.pesoReal.text),
                              idade);

                          controller.calcularTamTQT(idade);
                        }
                      },
                      onPressed: () {
                        if (calculadoraController.isNotEmpty()) {
                          String idade = calculadoraController.idade.text;
                          if (calculadoraController.isYear == false) {
                            idade =
                                '${double.parse(calculadoraController.idade.text) / 12}';
                          }
                          calculadoraController.calcularPesoIdeal(
                              idade,
                              calculadoraController.altura.text,
                              calculadoraController.sexo);

                          controller.calcularTamCanulaCPAP(
                              double.parse(calculadoraController.pesoReal.text),
                              idade);

                          controller.calcularTamTQT(idade);
                        }
                      }),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    padding: const EdgeInsets.only(
                        left: 17, bottom: 18, right: 15, top: 16.89),
                    decoration: CustomDecoration.shapeDecoration,
                    child: Column(
                      children: [
                        const Text(
                          'Pronga de CPAP Nasal',
                          style: TextStyle(
                            color: Color(0xFF67ABEB),
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 17.11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 180,
                              child: Column(
                                children: [
                                  const Text(
                                    'Tamanho \nda Cânula',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF1C72C2),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Container(
                                    //width: 130,
                                    height: 46,
                                    padding: const EdgeInsets.all(4),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1F5F4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          controller.tamCanulaCPAP,
                                          style: TextStyle(
                                            color: controller.tamCanulaCPAP ==
                                                    "Inadequado para\nessa idade"
                                                ? Colors.red
                                                : null,
                                            fontSize: 20,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              width: 130,
                              child: Column(
                                children: [
                                  const Text(
                                    'Como instalar CPAP',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF1C72C2),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  YoutubeButton(
                                      link: "https://youtu.be/8OFDHaOf79Y")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    width: double.infinity,
                    key: WidgetKeys.cpapKey,
                    constraints: const BoxConstraints(maxWidth: 400),
                    padding: const EdgeInsets.only(
                        left: 17, bottom: 18, right: 15, top: 16.89),
                    decoration: CustomDecoration.shapeDecoration,
                    child: Column(
                      children: [
                        const Text(
                          'Canula de TQT',
                          style: TextStyle(
                            color: Color(0xFF67ABEB),
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 17.11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 180,
                              child: Column(
                                children: [
                                  const Text(
                                    'Cânula\n Recomendada',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF1C72C2),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    //width: 225,
                                    height: 46,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFF1F5F4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                    child: Center(
                                      child: Text(
                                        controller.canulaTQT,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const SizedBox(
                              width: 130,
                              child: Column(
                                children: [
                                  Text(
                                    'Como realizar aspiração de TQT',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF1C72C2),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  YoutubeButton(
                                      link: "https://youtu.be/ALpYoZ_tjdQ")
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

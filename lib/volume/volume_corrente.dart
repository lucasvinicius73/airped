import 'package:airped/Widgets/aviso.dart';
import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/calculadora/calculadora.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/providers.dart';
import 'package:airped/volume/Widgets/volume_corrente_result.dart';
import 'package:airped/volume/volume_corrent_controller.dart';
import 'package:airped/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VolumeCorrentePage extends StatefulWidget {
  const VolumeCorrentePage({super.key});

  @override
  State<VolumeCorrentePage> createState() => _VolumeCorrentePageState();
}

FocusNode focusNode = FocusNode();

class _VolumeCorrentePageState extends State<VolumeCorrentePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final calculadoraController = getIt<CalculadoraController>();
    final controller = Provider.of<VolumeCorrenteController>(context);
    return Scaffold(
      backgroundColor: const Color(0xFF6AC7DE),
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(),
      body: ListenableBuilder(
        listenable: Listenable.merge([controller, calculadoraController]),
        builder: (context, child) => SingleChildScrollView(
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
                  Color(0xFF6AC7DE),
                  Color(0xFF6AC7DE)
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomTitlePage(
                  title: 'Volume Corrente e \nFrequência Respiratória',
                  icon: 'assets/title/lung.png',
                ),
                const Aviso(),
                const SizedBox(height: 25),
                Calculadora(
                  onPressedReset: () {
                    controller.reset();
                    calculadoraController.reset();
                  },
                  onChanged: (p0) {
                    print("OnChanged  Click");
                    if (calculadoraController.idade.text != '' &&
                        calculadoraController.altura.text != '') {
                      String idade = calculadoraController.idade.text;
                      if (calculadoraController.isYear == false) {
                        idade =
                            '${double.parse(calculadoraController.idade.text) / 12}';
                      }
                      calculadoraController.calcularPesoIdeal(
                          idade,
                          calculadoraController.altura.text,
                          calculadoraController.sexo);

                      if (calculadoraController.pesoIdeal > 0) {
                        controller.calcularFrequencia(
                            idade, calculadoraController.altura.text);
                        controller.calcularVolumeCorrente(
                            calculadoraController.pesoIdeal);
                      }
                    }
                  },
                  onPressed: () {
                    print("OnPressed  Click");
                    if (calculadoraController.idade.text != '' &&
                        calculadoraController.altura.text != '') {
                      String idade = calculadoraController.idade.text;
                      if (calculadoraController.isYear == false) {
                        idade =
                            '${double.parse(calculadoraController.idade.text) / 12}';
                      }
                      calculadoraController.calcularPesoIdeal(
                          idade,
                          calculadoraController.altura.text,
                          calculadoraController.sexo);

                      if (calculadoraController.pesoIdeal > 0) {
                        controller.calcularFrequencia(
                            idade, calculadoraController.altura.text);
                        controller.calcularVolumeCorrente(
                            calculadoraController.pesoIdeal);
                      }

                      Scrollable.ensureVisible(
                          WidgetKeys.volumeKey.currentContext!,
                          alignment: BorderSide.strokeAlignCenter);
                    }
                  },
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  decoration: CustomDecoration.shapeDecoration,
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Volume Corrente",
                        style: TextStyle(
                          color: Color(0xFF67ABEB),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 22.2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VolumeCorrenteResult(
                              title: '4', result: controller.vc4),
                          const SizedBox(
                            width: 23,
                          ),
                          VolumeCorrenteResult(
                              title: '5', result: controller.vc5),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VolumeCorrenteResult(
                              title: '6', result: controller.vc6),
                          const SizedBox(
                            width: 23,
                          ),
                          VolumeCorrenteResult(
                              title: '7', result: controller.vc7),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      VolumeCorrenteResult(title: '8', result: controller.vc8),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Container(
                  key: WidgetKeys.volumeKey,
                  constraints: const BoxConstraints(maxWidth: 400),
                  decoration: CustomDecoration.shapeDecoration,
                  width: double.infinity,
                  height: 115,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Frequência Respiratória',
                        style: TextStyle(
                          color: Color(0xFF67ABEB),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Container(
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
                          child: Center(
                            child: Text(
                              controller.frequencia,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ))
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

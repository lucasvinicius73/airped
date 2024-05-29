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
  Widget build(BuildContext context) {
    final calculadoraController = getIt<CalculadoraController>();
    final controller = Provider.of<VolumeCorrenteController>(context);

    return Scaffold(
      backgroundColor: const Color(0xFFFFE9EA),
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(),
      body: ListenableBuilder(
        listenable: controller,
        builder: (context, child) => SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 20, right: 20, bottom: 36),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
                width: 349,
                height: 938,
                decoration: ShapeDecoration(
                  color: const Color(0xCCFBFAFA),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'VOLUME CORRENTE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1C72C2),
                        fontSize: 34,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 17),
                    Calculadora(
                      onPressedReset: () {
                        controller.reset();
                        calculadoraController.reset();
                      },
                      onPressed: () {
                        if (calculadoraController.idade.text != '' ||
                            calculadoraController.peso.text != '' ||
                            calculadoraController.altura.text != '') {
                          controller.calcularFrequencia(
                              calculadoraController.idade.text,
                              calculadoraController.peso.text,
                              calculadoraController.altura.text);
                          controller.calcularVolumeCorrente(
                              calculadoraController.peso.text);

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
                      height: 371,
                      padding: const EdgeInsets.all(19),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFBFAFA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
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
                      child: Column(
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
                          VolumeCorrenteResult(
                              title: '8', result: controller.vc8),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 317,
                      height: 115,
                      key: WidgetKeys.volumeKey,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFBFAFA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

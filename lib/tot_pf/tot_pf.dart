import 'package:airped/calculadora/calculadora.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/providers.dart';
import 'package:airped/tot_pf/Widgets/tot_result.dart';
import 'package:airped/tot_pf/tot_controller.dart';
import 'package:airped/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TotPFPage extends StatelessWidget {
  const TotPFPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<TotController>(context);
    final calculadoraController = getIt<CalculadoraController>();

    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFFCF6BD),
      body: SingleChildScrollView(
        child: ListenableBuilder(
          listenable: controller,
          builder: (context, child) => Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 21, right: 22, bottom: 24),
              child: Container(
                width: 347,
                height: 791,
                padding: const EdgeInsets.only(top: 24),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFBFAFA),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFFCF7F7)),
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
                    const SizedBox(
                      width: 238,
                      child: Text(
                        'TOT e PONTO de FIXAÇÃO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1C72C2),
                          fontSize: 34,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Calculadora(onPressedReset: () {
                        calculadoraController.reset();
                        controller.reset();
                      }, onPressed: () {
                        if (calculadoraController.idade.text != '' ||
                            calculadoraController.peso.text != '' ||
                            calculadoraController.altura.text != '') {
                          String idade = calculadoraController.idade.text;
                          if (calculadoraController.isYear == false) {
                            idade =
                                '${double.parse(calculadoraController.idade.text) / 12}';
                          }
                          controller.calcularEscolhaTOTcomCUFF(
                              idade,
                              calculadoraController.peso.text,
                              calculadoraController.altura.text);
                          controller.calcularEscolhaTOTsemCUFF(
                              idade,
                              calculadoraController.peso.text,
                              calculadoraController.altura.text);
                          Scrollable.ensureVisible(
                              WidgetKeys.totKey.currentContext!,
                              alignment: BorderSide.strokeAlignCenter);
                        }
                      }),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 317,
                      height: 170,
                      padding: const EdgeInsets.only(
                          left: 17, bottom: 18, right: 15, top: 16.89),
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
                            'Escolha do TOT',
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
                            children: [
                              TotResult(
                                  firstText: 'Canula ',
                                  colorText: 'sem ',
                                  thirdText: 'CUFF (mm DI)',
                                  color: const Color(0xFFFF0000),
                                  result: controller.escolharTOTsemCUFF),
                              const SizedBox(
                                width: 25,
                              ),
                              TotResult(
                                  firstText: 'Canula ',
                                  colorText: 'com ',
                                  thirdText: 'CUFF (cm)',
                                  color: const Color(0xFF0BC212),
                                  result: controller.escolhaTOTcomCUFF),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: 317,
                      height: 170,
                      key: WidgetKeys.totKey,
                      padding: const EdgeInsets.only(
                          left: 17, bottom: 18, right: 15, top: 16),
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
                            'Ponto de Fixação',
                            style: TextStyle(
                              color: Color(0xFF67ABEB),
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              TotResult(
                                  firstText: 'Canula ',
                                  colorText: 'sem ',
                                  thirdText: 'CUFF (cm)',
                                  color: const Color(0xFFFF0000),
                                  result: controller.pontoFixacaoSemCUFF),
                              const SizedBox(
                                width: 25,
                              ),
                              TotResult(
                                  firstText: 'Canula ',
                                  colorText: 'com ',
                                  thirdText: 'CUFF (cm)',
                                  color: const Color(0xFF0BC212),
                                  result: controller.pontoFixacaoComCUFF),
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
      ),
    );
  }
}

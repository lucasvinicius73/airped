import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/calculadora/calculadora.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/providers.dart';
import 'package:airped/tubo_orotraqueal_ponto_de_fixacao/Widgets/tot_result.dart';
import 'package:airped/tubo_orotraqueal_ponto_de_fixacao/tot_controller.dart';
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
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFEBEC95),
      body: SingleChildScrollView(
        child: ListenableBuilder(
          listenable: controller,
          builder: (context, child) => Center(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 25, left: 20, right: 20, bottom: 36),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white,
                    Color(0xFFEBEC95),
                    Color(0xFFEBEC95)
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomTitlePage(
                    title: 'Tubo Orotraqueal (TOT)Fixação do TOT',
                    icon: 'assets/title/tot.png',
                  ),
                  const SizedBox(height: 28),
                  Calculadora(onPressedReset: () {
                    calculadoraController.reset();
                    controller.reset();
                  }, onChanged: (p0) {
                    print("Onchanged na Tubo Orotraqueal");
                    if (calculadoraController.isNotEmpty()) {
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
                    }
                  }, onPressed: () {
                    print("OnPressed na Tubo Orotraqueal");

                    if (calculadoraController.isNotEmpty()) {
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
                  const SizedBox(
                    height: 28,
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    height: 170,
                    padding: const EdgeInsets.only(
                        left: 17, bottom: 18, right: 15, top: 16.89),
                    decoration: CustomDecoration.shapeDecoration,
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    key: WidgetKeys.totKey,
                    constraints: const BoxConstraints(maxWidth: 400),
                    padding: const EdgeInsets.only(
                        left: 17, bottom: 18, right: 15, top: 16),
                    decoration: CustomDecoration.shapeDecoration,
                    child: Column(
                      children: [
                        const Text(
                          'Fixação do TOT',
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

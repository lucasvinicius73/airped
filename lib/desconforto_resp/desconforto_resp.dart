import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/custom_button.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/desconforto_resp/Widgets/dropdown_desconforto.dart';
import 'package:airped/desconforto_resp/desconforto_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesconfortoRespPage extends StatelessWidget {
  const DesconfortoRespPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<DesconfortoController>(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFBDDD80),
      body: ListenableBuilder(
        listenable: controller,
        builder: (context, child) => SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 36),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.white,
                  Color(0xFFBDDD80),
                  Color(0xFFBDDD80)
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomTitlePage(
                  title: 'Avaliação Respiratória',
                  icon: 'assets/title/baby.png',
                ),
                const SizedBox(height: 28),
                Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding: const EdgeInsets.symmetric(vertical: 15),
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
                        'Sinais Clínicos',
                        style: TextStyle(
                          color: Color(0xFF67ABEB),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      DropDownDesconfortoResp(
                        title: 'Retração Intercostal/Esternal',
                        value: controller.values[0],
                        values: controller.retracaoMap,
                        onChanged: (int? value) {
                          controller.changeDropDown(0, value);
                        },
                      ),
                      DropDownDesconfortoResp(
                        title: 'Dissociação Toraco-Abdominal',
                        value: controller.values[1],
                        values: controller.disssociacaoMap,
                        onChanged: (int? value) {
                          controller.changeDropDown(1, value);
                        },
                      ),
                      DropDownDesconfortoResp(
                        title: 'Batimentos de Aletas Nasais',
                        value: controller.values[2],
                        values: controller.batimentoMap,
                        onChanged: (int? value) {
                          controller.changeDropDown(2, value);
                        },
                      ),
                      DropDownDesconfortoResp(
                        title: 'Sibilos Expiratótios',
                        value: controller.values[3],
                        values: controller.sibilosMap,
                        onChanged: (int? value) {
                          controller.changeDropDown(3, value);
                        },
                      ),
                      DropDownDesconfortoResp(
                        title: 'Cianose e SaO2',
                        value: controller.values[4],
                        values: controller.cianoseMap,
                        onChanged: (int? value) {
                          controller.changeDropDown(4, value);
                        },
                      ),
                      DropDownDesconfortoResp(
                        title: 'Nível de Consciência',
                        value: controller.values[5],
                        values: controller.coscienciaMap,
                        onChanged: (int? value) {
                          controller.changeDropDown(5, value);
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonCalculadora(
                              onPressed: () {},
                              title: 'Reset',
                              color: const Color(0xFFF84040),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CustomButtonCalculadora(
                              onPressed: () async {
                                await controller.calcularScore();
                                await controller.calcularCuidado();
                                // ignore: use_build_context_synchronously
                                Navigator.of(context)
                                    .pushNamed('/desconforto_result_page');
                              },
                              title: 'Calcular',
                              color: const Color(0xFF0BC212),
                            ),
                          ],
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

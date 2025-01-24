import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/Widgets/custom_title_page.dart';
import 'package:airped/desconforto_resp/desconforto_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesconfortoResultPage extends StatelessWidget {
  const DesconfortoResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<DesconfortoController>(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFBDDD80),
      body: SingleChildScrollView(
        child: ListenableBuilder(
          listenable: controller,
          builder: (context, child) => Center(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  top: 25, left: 20, right: 20, bottom: 36),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    padding: const EdgeInsets.symmetric(
                        vertical: 19, horizontal: 20),
                    decoration: CustomDecoration.shapeDecoration,
                    child: Column(
                      children: [
                        const Text(
                          'Resultado:',
                          style: TextStyle(
                            color: Color(0xFF67ABEB),
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        const SizedBox(
                          width: 133,
                          child: Text(
                            'Escore Total',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1C72C2),
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 130,
                          height: 46,
                          decoration: CustomDecoration.shapeDecoration,
                          child: Center(
                              child: Text(
                            '${controller.score} - ${controller.scoreText}',
                            style: TextStyle(
                              color: controller.color,
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          'Discussão em Equipe:',
                          style: TextStyle(
                            color: Color(0xFF1C72C2),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          //width: 285,
                          height: 114,
                          decoration: CustomDecoration.shapeDecoration,
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: controller.cuidados.length,
                            itemBuilder: (context, index) => Center(
                              child: Text(
                                '- ${controller.cuidados[index]}',
                                style: TextStyle(
                                  color: controller.color,
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 5,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Calcular Novamente:',
                          style: TextStyle(
                            color: Color(0xFF1C72C2),
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 45,
                          child: FilledButton.icon(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.arrow_back),
                            label: const Text("Voltar"),
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Color(0xFF92BD44))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

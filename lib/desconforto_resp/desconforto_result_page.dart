import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/desconforto_resp/desconforto_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesconfortoResultPage extends StatelessWidget {
  const DesconfortoResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<DesconfortoController>(context);
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFDEF7E8),
      body: SingleChildScrollView(
        child: ListenableBuilder(
          listenable: controller,
          builder: (context, child) => Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 21, right: 22, bottom: 24),
              child: Container(
                width: 347,
                height: 483,
                padding:
                    const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
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
                    const Text(
                      'DESCONFORTO\nRESPIRATÓRIO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1C72C2),
                        fontSize: 34,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 317,
                      height: 334,
                      padding: const EdgeInsets.symmetric(vertical: 19),
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
                            'Resultado',
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
                            'Procedimentos',
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
                            width: 285,
                            height: 114,
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: ListView.separated(
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

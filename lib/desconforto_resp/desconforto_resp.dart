import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/custom_drawer.dart';
import 'package:airped/cpap_tqt/Widgets/dropdown_desconforto.dart';
import 'package:flutter/material.dart';

class DesconfortoRespPage extends StatelessWidget {
  const DesconfortoRespPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFDEF7E8),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 21, right: 22, bottom: 24),
          child: Container(
            width: 347,
            height: 717,
            padding: const EdgeInsets.only(top: 17),
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
                  height: 571,
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
                      // const DropDownDesconfortoResp(
                      //   title: 'Retração Intercostal/Esternal',
                      // ),
                      // const DropDownDesconfortoResp(
                      //   title: 'Dissociação Toraco-Abdominal',
                      // ),
                      // const DropDownDesconfortoResp(
                      //   title: 'Batimentos de Aletas Nasais',
                      // ),
                      // const DropDownDesconfortoResp(
                      //   title: 'Sibilos Expiratótios',
                      // ),
                      // const DropDownDesconfortoResp(
                      //   title: 'Cianose e SaO2',
                      // ),
                      // const DropDownDesconfortoResp(
                      //   title: 'Nível de Consciência',
                      // ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          children: [
                            Container(
                              width: 112,
                              height: 37,
                              decoration: ShapeDecoration(
                                color: Colors.white,
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
                              child: const Center(
                                child: Text(
                                  'Reset',
                                  style: TextStyle(
                                    color: Color(0xFFF84040),
                                    fontSize: 20,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                                width: 112,
                                height: 37,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
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
                                child: const Center(
                                  child: Text(
                                    'Calcular',
                                    style: TextStyle(
                                      color: Color(0xFF0BC212),
                                      fontSize: 20,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ))
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

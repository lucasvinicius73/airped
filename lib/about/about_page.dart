import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFDEF7E8),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 21, right: 22, bottom: 24),
            child: Container(
              width: 347,
              height: 958,
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
                    'SOBRE',
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
                    height: 502,
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
                          'Quem somos',
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
                          width: 285,
                          height: 430,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF1F5F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Container(
                    width: 317,
                    height: 331,
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
                          'Aplicativo',
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
                          width: 285,
                          height: 262,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF1F5F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        )
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

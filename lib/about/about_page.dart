import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/about/widgets/custom_liste_tile.dart';
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
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xFFDEF7E8),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 21, right: 22, bottom: 24),
            child: Container(
              width: 347,
              height: 980,
              padding: const EdgeInsets.only(top: 17, bottom: 20),
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
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
                        Row(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 75,
                              child: Image.asset("assets/about/brasaouepa.png"),
                            ),
                            const Spacer(),
                            SizedBox(
                              height: 80,
                              width: 75,
                              child: Image.asset("assets/about/logoCipe.png"),
                            ),
                            const Spacer(),
                            SizedBox(
                              height: 80,
                              width: 75,
                              child: Image.asset("assets/about/logoCapes.png"),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Mestrado Profissional em Cirurgia e Pesquisa Experimental - CIPE Universidade do Estado do Pará",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Expanded(
                    child: Container(
                      width: 317,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 12),
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
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Linha de atuação cientifico tecnologica:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF67ABEB),
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Aplicativo é um produto de tese desenvolvido por Jamille no programa de mestrado profissional. Programa credenciado pela CAPES",
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomListeTile(
                              title: "Contato",
                              isEmail: true,
                              subtitle: "jamille@jamille.com"),
                          CustomListeTile(
                              title: "Orientador(a)",
                              subtitle: "Prof. Dr. Anderson Bentes de Lima"),
                          CustomListeTile(
                              title: "Coorientador(as)",
                              subtitle: "Prof. Dr. Anderson Bentes de Lima"),
                          SizedBox(
                            height: 20,
                          ),
                          CustomListeTile(
                              title: "Desenvolvido por",
                              subtitle: "Lucas Vinicius Silva Idelfonso"),
                          CustomListeTile(
                              title: "Contato Desenvolvedor",
                              isEmail: true,
                              subtitle: "contato@lucasvdev.com"),
                          CustomListeTile(
                              title: "Design feito por:",
                              isEmail: true,
                              subtitle: "Amanda Fiel Savino"),
                          CustomListeTile(
                              title: "Contato UX Design",
                              isEmail: true,
                              subtitle: "amandasavino@gmail.com"),
                        ],
                      ),
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

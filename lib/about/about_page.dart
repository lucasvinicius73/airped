import 'package:airped/Widgets/custom_app_bar.dart';
import 'package:airped/Widgets/Drawer/custom_drawer.dart';
import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/Widgets/custom_title_page.dart';
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
        child: Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 25, left: 21, right: 22, bottom: 24),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.white,
                Color(0xFFDEF7E8),
                Color(0xFFDEF7E8)
              ])),
          child: Column(
            children: [
              const CustomTitlePage(
                  title: "Sobre o Aplicativo", icon: "assets/title/about.png"),
              const SizedBox(
                height: 20,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: CustomDecoration.shapeDecoration,
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
              Container(
                constraints: const BoxConstraints(maxWidth: 400),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: CustomDecoration.shapeDecoration,
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
                      "O aplicativo AirPed© é um produto de tese de mestrado desenvolvido por Jamille Cristina Conceição Santos no programa de mestrado profissional. Programa credenciado pela CAPES.",
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomListeTile(
                        title: "Autor(a)",
                        subtitle: "Jamille Cristina Conceição Santos",
                        email: "jamillefisio52@gmail.com"),
                    CustomListeTile(
                        title: "Orientador(a)",
                        subtitle: "Profa. Dra. Ivete Furtado Ribeiro Caldas"),
                    CustomListeTile(
                        title: "Coorientador(a)",
                        subtitle: "Profa. Ms. Lorena de Oliveira Tannus"),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "Desenvolvimento:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF67ABEB),
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CustomListeTile(
                        subtitle: "Lucas Vinicius Silva Idelfonso",
                        title: "Contato Desenvolvedor",
                        email: "contato@lucasvdev.com"),
                    CustomListeTile(
                        subtitle: "Amanda Fiel Savino",
                        title: "Contato UX Design",
                        email: "amanda26fsavino@gmail.com"),
                    CustomListeTile(
                        title: "Design de Telas",
                        subtitle:
                            "Luciana Ferreira Vidal\n• Jamille Cristina Conceição Santos"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

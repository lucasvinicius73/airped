import 'package:airped/Widgets/custom_decoration.dart';
import 'package:flutter/material.dart';

class Aviso extends StatelessWidget {
  const Aviso({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            constraints: const BoxConstraints(maxWidth: 400),
            decoration: CustomDecoration.shapeDecoration,
            child: RichText(
                textAlign: TextAlign.justify,
                text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(text: "Clique no icone de calendário "),
                      TextSpan(
                          text: "azul ", style: TextStyle(color: Colors.blue)),
                      WidgetSpan(
                          child: Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.blue,
                      )),
                      TextSpan(
                        text: " dentro do campo Idade para alterar a idade de ",
                      ),
                      TextSpan(
                          text: "\"anos\"",
                          style: TextStyle(color: Colors.blue)),
                      TextSpan(text: " para "),
                      TextSpan(
                          text: "\"meses\" ",
                          style: TextStyle(color: Colors.red)),
                      WidgetSpan(
                          child: Icon(
                        Icons.calendar_view_month,
                        color: Colors.red,
                      )),
                      TextSpan(text: "."),
                    ])),
          ),
        ),
        Positioned(
            top: 22,
            child:
                SizedBox(width: 40, child: Image.asset("assets/warning.png"))),
      ],
    );
  }
}

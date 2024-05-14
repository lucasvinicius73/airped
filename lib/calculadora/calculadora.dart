import 'package:airped/calculadora/Widgets/custom_button.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/calculadora/Widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculadora extends StatelessWidget {
  final Function() onPressed;

  const Calculadora({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CalculadoraController>(context);

    List sexos = ['Masculino', 'Feminino'];
    String sexo = sexos.first;
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 22, bottom: 14, top: 15),
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
            'Calculadora',
            style: TextStyle(
              color: Color(0xFF67ABEB),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              CustomTextFormCalculadora(
                  controller: controller.idade,
                  hintText: 'Idade',
                  suffixText: '',
                  icon: Icons.calendar_month),
              const Spacer(),
              CustomTextFormCalculadora(
                  controller: controller.altura,
                  hintText: 'Altura',
                  suffixText: '',
                  icon: Icons.height)
            ],
          ),
          const SizedBox(height: 23),
          Row(
            children: [
              CustomTextFormCalculadora(
                  controller: controller.peso,
                  hintText: 'Peso',
                  suffixText: 'g',
                  icon: Icons.scale),
              const Spacer(),
              Container(
                width: 130,
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF1F5F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      dropdownColor: const Color(0xFFF1F5F4),
                      value: sexo,
                      items: sexos.map<DropdownMenuItem<String>>(
                        (value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                color: Color(0x667C7C7C),
                                fontSize: 17,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                      onChanged: (String? value) {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Row(
            children: [
              CustomButtonCalculadora(
                onPressed: () {
                  controller.altura.text = '';
                  controller.idade.text = '';
                  controller.peso.text = '';
                },
                title: 'Reset',
                color: const Color(0xFFF84040),
              ),
              const Spacer(),
              CustomButtonCalculadora(
                onPressed: onPressed,
                title: 'Calcular',
                color: const Color(0xFF0BC212),
              )
            ],
          )
        ],
      ),
    );
  }
}

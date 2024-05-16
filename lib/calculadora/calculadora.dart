import 'package:airped/Widgets/custom_button.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/calculadora/Widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculadora extends StatelessWidget {
  final Function() onPressed;
  final Function() onPressedReset;

  const Calculadora({
    super.key,
    required this.onPressed,
    required this.onPressedReset,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CalculadoraController>(context);

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
                  suffixText: 'cm',
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
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF1F5F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      controller.sexo == 'Masculino'
                          ? Icons.male
                          : Icons.female,
                      color: const Color(0x667C7C7C),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 77,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          dropdownColor: const Color(0xFFF1F5F4),
                          value: controller.sexo,
                          isExpanded: true,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis, fontSize: 20),
                          items: controller.sexos.map<DropdownMenuItem<String>>(
                            (value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                      color: Color(0x667C7C7C),
                                      fontSize: 18,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (String? value) {
                            controller.changeDropDown(value);
                          },
                        ),
                      ),
                    ),
                  ],
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
                onPressed: onPressedReset,
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

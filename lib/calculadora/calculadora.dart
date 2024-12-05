import 'package:airped/Widgets/custom_button.dart';
import 'package:airped/Widgets/custom_decoration.dart';
import 'package:airped/calculadora/calculadora_controller.dart';
import 'package:airped/calculadora/Widgets/custom_text_form.dart';
import 'package:airped/providers.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Calculadora extends StatefulWidget {
  final Function() onPressed;
  final Function() onPressedReset;
  final Function(String)? onChanged;

  const Calculadora({
    super.key,
    required this.onPressed,
    required this.onPressedReset,
    this.onChanged,
  });

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final controller = getIt<CalculadoraController>();
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    controller.idade.addListener(controller.handleTextChanged);
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) => ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: CustomDecoration.shapeDecoration,
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
                    onChanged: widget.onChanged,
                    controller: controller.idade,
                    hintText: controller.isYear == true
                        ? 'Idade(anos)'
                        : 'Idade(meses)',
                    suffixText: controller.showSuffixText
                        ? ''
                        : controller.isYear == true
                            ? 'anos'
                            : 'meses',
                    icon: controller.isYear == true
                        ? const Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.blue,
                          )
                        : const Icon(
                            Icons.calendar_view_month,
                            color: Colors.red,
                          ),
                    onPressed: () async {
                      await controller.changeAge();
                      await widget.onChanged!("");

                      _showToast();
                    },
                  ),
                  const Spacer(),
                  CustomTextFormCalculadora(
                      onChanged: widget.onChanged,
                      controller: controller.altura,
                      hintText: 'Altura',
                      suffixText: 'cm',
                      icon: const Icon(Icons.height))
                ],
              ),
              const SizedBox(height: 23),
              Row(
                children: [
                  Container(
                    width: 165,
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFDFE1E1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        controller.sexo == 'Masculino'
                            ? const Icon(
                                Icons.male,
                                color: Colors.blue,
                              )
                            : const Icon(
                                Icons.female,
                                color: Colors.pink,
                              ),
                        const SizedBox(
                          width: 2,
                        ),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              iconSize: 30,
                              dropdownColor: const Color(0xFFF1F5F4),
                              value: controller.sexo,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                overflow: TextOverflow.clip,
                              ),
                              items: controller.sexos
                                  .map<DropdownMenuItem<String>>(
                                (value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? value) {
                                controller.changeDropDown(value);
                                widget.onChanged!("");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 165,
                    height: 45,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFDFE1E1),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.scale),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          controller.pesoIdeal > 0
                              ? "${controller.pesoIdeal} kg"
                              : "Peso Ideal",
                          style: const TextStyle(
                            fontSize: 19,
                            fontFamily: 'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonCalculadora(
                    onPressed: widget.onPressedReset,
                    title: 'Limpar',
                    color: const Color(0xFFD85E5E),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButtonCalculadora(
                    onPressed: widget.onPressed,
                    title: 'Calcular',
                    color: const Color(0xFF92BD44),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showToast() {
    Widget toast = Container(
      height: 60,
      width: 300,
      //padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
          color: const Color(0xFFDFE1E1),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check),
            const SizedBox(
              width: 12.0,
            ),
            RichText(
                text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                  const TextSpan(
                    text: "Você mudou a Idade para ",
                  ),
                  controller.isYear
                      ? const TextSpan(
                          text: "\"anos\"",
                          style: TextStyle(color: Colors.blue))
                      : const TextSpan(
                          text: "\"meses\"",
                          style: TextStyle(color: Colors.red)),
                  const TextSpan(text: ".")
                ])),
          ],
        ),
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 3),
    );
  }
}

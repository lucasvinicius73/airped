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
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
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
                      hintText: 'Idade',
                      suffixText: controller.showSuffixText
                          ? ''
                          : controller.isYear == true
                              ? 'anos'
                              : 'meses',
                      icon: controller.isYear == true
                          ? Icons.calendar_month
                          : Icons.calendar_view_day,
                      onPressed: () {
                        widget.onChanged!("");
                        controller.changeAge();
                        _showToast();
                      }),
                  const Spacer(),
                  CustomTextFormCalculadora(
                      onChanged: widget.onChanged,
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
                      onChanged: widget.onChanged,
                      controller: controller.peso,
                      hintText: 'Peso',
                      suffixText: 'g',
                      icon: Icons.scale),
                  const Spacer(),
                  Container(
                    width: 155,
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
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 97,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              dropdownColor: const Color(0xFFF1F5F4),
                              value: controller.sexo,
                              isExpanded: true,
                              style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                              items: controller.sexos
                                  .map<DropdownMenuItem<String>>(
                                (value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: const TextStyle(
                                          color: Colors.black,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonCalculadora(
                    onPressed: widget.onPressedReset,
                    title: 'Reset',
                    color: const Color(0xFFF84040),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CustomButtonCalculadora(
                    onPressed: widget.onPressed,
                    title: 'Calcular',
                    color: const Color(0xFF0BC212),
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
      decoration: CustomDecoration.shapeDecoration,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              controller.isYear
                  ? "Você mudou a Idade para anos!"
                  : "Você mudou a Idade para meses!",
              style: const TextStyle(),
            ),
          ],
        ),
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 1),
    );
  }
}

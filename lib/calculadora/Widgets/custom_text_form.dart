import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormCalculadora extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String suffixText;
  final Icon icon;
  final Function()? onPressed;
  final Function(String)? onChanged;

  const CustomTextFormCalculadora(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.suffixText,
      required this.icon,
      this.onPressed,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 45,
      child: TextFormField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: const TextStyle(
          fontSize: 19,
          fontFamily: 'Roboto',
          color: Colors.black,
          fontWeight: FontWeight.w400,
          height: 1.2, // Ajusta o espaçamento vertical do texto
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixText: suffixText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          suffixStyle: TextStyle(
            color: suffixText == 'anos'
                ? Colors.blue
                : suffixText == 'meses'
                    ? Colors.red
                    : Colors.black,
            fontSize: 17,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1.2, // Ajusta o alinhamento vertical do texto do sufixo
            overflow: TextOverflow.clip,
          ),
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1.2, // Ajusta o alinhamento vertical do texto de dica
            overflow: TextOverflow.clip,
          ),
          fillColor: const Color(0xFFDFE1E1),
          filled: true,
          prefixIcon: onPressed != null
              ? IconButton(
                  icon: icon,
                  onPressed: onPressed,
                )
              : icon,
          prefixIconConstraints: const BoxConstraints(
            maxWidth: 36,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFDFE1E1), width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFDFE1E1), width: 3),
          ),
        ),
      ),
    );
  }
}

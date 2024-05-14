import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormCalculadora extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String suffixText;
  final IconData icon;

  const CustomTextFormCalculadora(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.suffixText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122,
      height: 37,
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: controller,
          textAlign: TextAlign.center,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Roboto',
            color: Color(0xFF7C7C7C),
            fontWeight: FontWeight.w400,
            height: 1,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            suffixText: suffixText,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
            hintStyle: const TextStyle(
              color: Color(0x667C7C7C),
              fontSize: 20,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
            fillColor: const Color(0xFFF1F5F4),
            filled: true,
            prefixIcon: Icon(
              icon,
              color: const Color(0x667C7C7C),
              size: 22,
            ),
            prefixIconConstraints:
                const BoxConstraints(minHeight: 48, minWidth: 40),
            enabledBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Color(0xFFF1F5F4), width: 3),
            ),
            focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Color(0xFFF1F5F4), width: 3),
            ),
          ),
        ),
      ),
    );
  }
}

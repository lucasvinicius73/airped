import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormCalculadora extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String suffixText;
  final IconData icon;
  final Function()? onPressed;

  const CustomTextFormCalculadora(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.suffixText,
      required this.icon,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      height: 37,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        //textAlign: TextAlign.center,

        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'Roboto',
          color: Color(0xFF7C7C7C),
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixText: suffixText,
          contentPadding: const EdgeInsets.only(
            bottom: 5,
            top: 6,
            right: 10,
          ),
          suffixStyle: const TextStyle(
            color: Color(0x667C7C7C),
            fontSize: 17,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 0,
            overflow: TextOverflow.clip,
          ),
          hintStyle: const TextStyle(
            color: Color(0x667C7C7C),
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 0,
            overflow: TextOverflow.clip,
          ),
          fillColor: const Color(0xFFF1F5F4),
          filled: true,
          prefixIcon: onPressed != null
              ? IconButton(
                  icon: Icon(
                    icon,
                    color: const Color(0x667C7C7C),
                    size: 22,
                  ),
                  onPressed: onPressed,
                )
              : Icon(
                  icon,
                  color: const Color(0x667C7C7C),
                  size: 22,
                ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 48,
            minWidth: 38,
          ),
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
    );
  }
}

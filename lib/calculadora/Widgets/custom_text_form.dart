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
      width: 155,
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
          color: Colors.black,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixText: suffixText,
          contentPadding: const EdgeInsets.only(
            bottom: 5,
            top: 2,
            right: 10,
          ),
          suffixStyle: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 0,
            overflow: TextOverflow.clip,
          ),
          hintStyle: const TextStyle(
            color: Colors.black,
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
                    color: Colors.black,
                    size: 22,
                  ),
                  onPressed: onPressed,
                )
              : Icon(
                  icon,
                  color: Colors.black,
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormCalculadora extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String suffixText;
  final IconData icon;
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
      width: 155,
      height: 40,
      child: TextFormField(
        onChanged: onChanged,
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

          //alignLabelWithHint: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 8.5),
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
          fillColor: const Color(0xFFDFE1E1),

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
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFDFE1E1), width: 3),
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xFFDFE1E1), width: 3),
          ),
        ),
      ),
    );
  }
}

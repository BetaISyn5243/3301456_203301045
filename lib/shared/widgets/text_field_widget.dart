import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      required this.labelText,
      required this.hintText,
      this.obscureText = false,
      required this.controller,
      required this.textInputType})
      : super(key: key);
  final String labelText, hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType textInputType;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          labelText,
          style: const TextStyle(color: Color(0xFF707070), fontSize: 18),
        ),
        TextField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF707070),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

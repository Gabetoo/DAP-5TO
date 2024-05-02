import 'package:flutter/material.dart';

class MiTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MiTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });


@override
Widget build(BuildContext context) {
  return Padding( //Bloque de texto de contraseña
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: controller,
              obscureText: obscureText,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(0, 0, 0, 1),
                  width: 2.5
                  ),
                ),
                fillColor: const Color.fromRGBO(255, 255, 255, 1),
                filled: true,
                hintText: hintText,
                hintStyle: const TextStyle(color: Color.fromRGBO(1, 1, 1, 1))
        ),
      ),
    );
  }
}
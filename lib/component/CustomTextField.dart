import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // const CustomTextField(Map<dynamic, String> map, {super.key});

  String hintText;
  String labelText;
  String errorMessage;

  CustomTextField(
      {required this.hintText,
      required this.labelText,
      required this.errorMessage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        style: const TextStyle(fontWeight: FontWeight.w600),
        decoration: InputDecoration(hintText: hintText, labelText: labelText),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorMessage;
            ;
          }
          return null;
        },
        // onChanged: (value) => {name = value, setState(() {})},
      ),
    );
  }
}

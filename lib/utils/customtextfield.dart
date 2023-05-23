import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;

  const CustomTextField({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: TextFormField(
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          labelStyle: TextStyle(color: Color(0xFF00A896)),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00A896)),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF00A896), width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          focusColor: Colors.white,
        ),
      ),
    );
  }
}
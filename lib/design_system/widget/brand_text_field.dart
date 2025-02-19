import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../label/label.dart';

class BrandTextField extends StatelessWidget {
  final String? hintText, errorString;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType? keyboardType;

  const BrandTextField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.errorString,
    this.validator,
    this.controller,
    this.keyboardType,
    this.inputFormatters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return errorString ?? Strings.requiredField;
            }
            return null;
          },
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: false,
        fillColor: Colors.white,
        hintText: hintText,
      ),
    );
  }
}

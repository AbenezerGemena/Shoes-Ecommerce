import 'package:flutter/material.dart';
import 'package:shoes/core/themes.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final String title;
  final bool obscureText;
  final RegExp validationRegExp;
  final void Function(String?) onSaved;

  const CustomFormField({
    super.key,
    required this.hintText,
    required this.title,
    this.obscureText = false,
    required this.validationRegExp,
    required this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 4),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          TextFormField(
            obscureText: obscureText,
            onSaved: onSaved,
            validator: (value) {
              if (value != null && validationRegExp.hasMatch(value)) {
                return null;
              }
              return "Enter a valid ${hintText.toLowerCase()}";
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: inputFieldColor,
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

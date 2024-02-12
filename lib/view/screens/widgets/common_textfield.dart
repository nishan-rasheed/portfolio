import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key, this.validator, this.autovalidateMode, this.controller, this.enabled, this.hint, this.maxLines,
  });

  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextEditingController? controller;
  final bool? enabled;
  final String? hint;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      maxLines: maxLines,
      enabled:enabled,
      controller: controller,
      validator: validator,
      autovalidateMode: autovalidateMode??AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        filled: true,
        fillColor:Color.fromARGB(255, 243, 241, 245),
        hintText: hint,
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(color: Colors.orange),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(color: Colors.transparent)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red.shade300)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(color: Colors.brown)
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(color: Colors.yellow)
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:const BorderSide(color: Colors.red)
        ),
        
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:fosonline2/common/app_color.dart';

class AppPasswordField extends StatelessWidget {
  TextEditingController controller;
  bool obscurity;
  String hint;
  VoidCallback obscurityFun;
  AppPasswordField({
    Key? key,
    required this.hint,
    required this.controller,
    this.obscurity = false,
    required this.obscurityFun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "Enter your $hint";
        }
        return null;
      },
      obscureText: obscurity,
      enableSuggestions: false,
      autocorrect: false,
      style: const TextStyle(
        color: AppColor.primaryColor,
        decoration: TextDecoration.none,
      ),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            obscurity ? Icons.visibility_off : Icons.visibility,
            color: AppColor.primaryColor,
          ),
          onPressed: obscurityFun,
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: AppColor.primaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.white)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2, color: Colors.white)),
        hintStyle: TextStyle(color: AppColor.primaryColor),
        hintText: hint,
      ),
    );
  }
}

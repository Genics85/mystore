import 'package:flutter/material.dart';
import 'package:fosonline2/common/app_color.dart';

class AppTextField extends StatelessWidget {
  TextEditingController controller;
  String hint;
  AppTextField({Key? key, required this.hint, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: false,
      autocorrect: false,
      style: TextStyle(
        color: AppColor.primaryColor,
        decoration: TextDecoration.none,
        ),
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2,color: AppColor.primaryColor)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 2,color: Colors.white)
        ),
        hintStyle: TextStyle(
          color: AppColor.primaryColor
        ),
        hintText: hint,
      ),
    );
  }
}

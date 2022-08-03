import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fosonline2/constants/error_handling.dart';
import 'package:fosonline2/constants/global_variables.dart';
import 'package:fosonline2/models/user.dart';
import "package:fosonline2/common/show_snackbar.dart";
import 'package:http/http.dart' as http;

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      User user = User(
          id: "",
          name: name,
          password: password,
          address: "",
          type: "",
          token: "",
          email: email);

      http.Response response = await http.post(Uri.parse(uri + "/user/signup"),
          body: jsonEncode(user.toJson()),
          headers: <String, String>{
            "Content-Type": "application/json; charset=UTF-8"
          });

      httpErrorHandle(
          response: response,
          context: context,
          onSuccess: () {
            showSnackBar(context, "You have successfuly signed up, login now",Colors.green);
          });
    } catch (e) {
      print(e);
    }
  }
}

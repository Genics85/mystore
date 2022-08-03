import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fosonline2/common/show_snackbar.dart';
import "package:http/http.dart" as http;

void httpErrorHandle(
    {required http.Response response,
    required BuildContext context,
    required VoidCallback onSuccess}) {
  Color errorColor = Colors.deepOrange;
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      showSnackBar(
          context, jsonDecode(response.body)["msg"], Colors.deepOrange);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)["error"],Colors.deepOrange);
      break;
    default:
      showSnackBar(context, jsonDecode(response.body),Colors.grey);
      break;
  }
}

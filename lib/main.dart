import 'package:flutter/material.dart';
import 'package:fosonline2/common/app_color.dart';
import 'package:fosonline2/constants/global_variables.dart';
import 'package:fosonline2/features/auth/router.dart';
import 'package:fosonline2/features/auth/screens/authentication_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FooseOnline',
      theme: ThemeData(
          primaryColor: AppColor.primaryColor,
          colorScheme:
              const ColorScheme.light(primary: AppColor.primaryColor)),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const AuthenticationPage(),
    );
  }
}

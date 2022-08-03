import 'package:flutter/material.dart';
import 'package:fosonline2/common/app_button.dart';
import 'package:fosonline2/common/app_color.dart';
import 'package:fosonline2/common/app_password_field.dart';
import 'package:fosonline2/common/app_text_field.dart';
import 'package:fosonline2/services/auth_services.dart';

class AuthenticationPage extends StatefulWidget {
  static const routeName = "/authenticationPage";
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  AuthService authService = AuthService();
  final GlobalKey<FormState> _signUpKey = GlobalKey();
  final GlobalKey<FormState> _signInKey = GlobalKey();

  bool obscurity = false;

  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: _emailTextController.text,
        name: _nameController.text,
        password: _passwordController.text);
  }

  void obscurityFun() {
    setState(() {
      obscurity = !obscurity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
                color: AppColor.secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: AppColor.primaryColor,
                  unselectedLabelColor: Colors.white,
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  unselectedLabelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  tabs: [
                    Tab(
                      text: "Login",
                    ),
                    Tab(
                      text: "Sing Up",
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SizedBox(
                    height: 300,
                    child: TabBarView(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 70),
                          child: SingleChildScrollView(
                            child: Form(
                              key: _signInKey,
                              child: Column(
                                children: [
                                  AppTextField(
                                      hint: "Email",
                                      controller: _emailTextController),
                                  const SizedBox(height: 10),
                                  AppPasswordField(
                                    hint: "Password",
                                    controller: _passwordController,
                                    obscurity: obscurity,
                                    obscurityFun: obscurityFun,
                                  ),
                                  const SizedBox(height: 10),
                                  AppButton(
                                    text: "Login",
                                    onTap: () {
                                      if (_signInKey.currentState!
                                          .validate()) {}
                                    },
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 50),
                          child: SingleChildScrollView(
                            child: Form(
                              key: _signUpKey,
                              child: Column(
                                children: [
                                  AppTextField(
                                      hint: "Name",
                                      controller: _nameController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AppTextField(
                                      hint: "Email",
                                      controller: _emailTextController),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  AppPasswordField(
                                    hint: "Password",
                                    controller: _passwordController,
                                    obscurity: obscurity,
                                    obscurityFun: obscurityFun,
                                  ),
                                  const SizedBox(height: 10),
                                  AppPasswordField(
                                    hint: "Confirm password",
                                    controller: _confirmPasswordController,
                                    obscurity: obscurity,
                                    obscurityFun: obscurityFun,
                                  ),
                                  const SizedBox(height: 10,),
                                  AppButton(
                                      text: "Sign Up",
                                      onTap: () {
                                        if (_signUpKey.currentState!
                                            .validate()) {
                                          signUpUser();
                                        }
                                      })
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

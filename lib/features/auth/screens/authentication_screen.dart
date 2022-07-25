import 'package:flutter/material.dart';
import 'package:fosonline2/common/app_button.dart';
import 'package:fosonline2/common/app_color.dart';
import 'package:fosonline2/common/app_text_field.dart';

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
                          margin: EdgeInsets.only(left: 10, right: 10, top: 70),
                          child: SingleChildScrollView(
                            child: Form(
                              child: Column(
                                children: [
                                  AppTextField(
                                      hint: "Email",
                                      controller: _emailTextController),
                                  SizedBox(height: 10),
                                  AppTextField(
                                      hint: "Password",
                                      controller: _passwordController),
                                  SizedBox(height: 10),
                                  AppButton(
                                    text: "Login",
                                    callback: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                          child: SingleChildScrollView(
                            child: Form(
                              child: Column(
                                children: [
                                  AppTextField(
                                      hint: "Name",
                                      controller: _nameController),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AppTextField(
                                      hint: "Email",
                                      controller: _emailTextController),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AppTextField(
                                      hint: "Password",
                                      controller: _passwordController),
                                  SizedBox(height: 10),
                                  AppTextField(
                                      hint: "Confirm password",
                                      controller: _confirmPasswordController),
                                  AppButton(text: "Sign Up", callback: () {})
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

import 'package:flutter/material.dart';
import 'package:fosonline2/common/app_color.dart';
import 'package:fosonline2/constants/global_variables.dart';
import 'package:fosonline2/widgets/app_text.dart';

class AuthenticationPage extends StatefulWidget {
  static const routeName = "/authenticationPage";
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Center(
          child:Container(
            margin: EdgeInsets.only(right: 10,left:10),
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration:const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: AppColor.secondaryColor,
            ),
            child: Column(
              children: const [
                TabBar(tabs: [
                  Tab(
                    icon:Icon(Icons.person)
                  ),
                  Tab(
                    icon:Icon(Icons.ac_unit_outlined)
                  )
                ])
              ],
            ),
          ),
        )
      )
    );
  }
}

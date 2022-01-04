import 'package:base_http_project/view/login/controller/login_controller.dart';
import 'package:base_http_project/view/login/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMain extends StatelessWidget {
  const LoginMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LoginController(),
      builder: (GetxController controller){
        return LoginView();
      },
    );
  }
}
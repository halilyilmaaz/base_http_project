import 'package:base_http_project/view/register/controller/register_controller.dart';
import 'package:base_http_project/view/register/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterMain extends StatelessWidget {
  const RegisterMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: RegisterController(),
      builder: (GetxController controller){
        return RegisterView();
      },
    );
  }
}
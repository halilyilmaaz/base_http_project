import 'package:base_http_project/view/welcome/controller/welcome_controller.dart';
import 'package:base_http_project/view/welcome/view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeMain extends StatelessWidget {
  const WelcomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: WelcomeController(),
      builder: (GetxController controller){
        return WelcomeView();
      },
    );
  }
}
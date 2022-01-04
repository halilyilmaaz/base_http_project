import 'package:base_http_project/view/welcome/controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WelcomeController());
    return Scaffold(
      key: controller.welcomeKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(onTap: (){controller.gotoLogin(context);}, child: Container(child: Text("Login"),)),
            GestureDetector(onTap: (){controller.gotoRegister(context);}, child: Container(child: Text("Register"),)),
          ],
        ),
      ),
    );
  }
}
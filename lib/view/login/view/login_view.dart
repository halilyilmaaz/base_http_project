import 'package:base_http_project/view/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      key: controller.loginKey,
      body: SafeArea(
        child: Column(
          children: [
            TextField(controller: controller.usernameController,),
            TextField(controller: controller.emailController,),
            ElevatedButton(onPressed: (){controller.getLoginApi();}, child: Text("login"))
          ],
        ),
      ),
    );
  }
}
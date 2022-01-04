import 'package:base_http_project/view/register/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      key: controller.registerController,
      body: SafeArea(
        child: Column(
          children: [
            TextField(controller: controller.emailController,),
            TextField(controller: controller.passwordController,),
            ElevatedButton(onPressed: (){controller.getRegister();}, child: Text("register"))
          ],
        ),
      ),
    );
  }
}
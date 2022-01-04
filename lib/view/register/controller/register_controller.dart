


import 'package:base_http_project/app/BL/general/authentication.dart';
import 'package:base_http_project/app/constant/enum/loading_status_enum.dart';
import 'package:base_http_project/app/model/reqponse/BaseModel.dart';
import 'package:base_http_project/app/model/request/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{
  final GlobalKey registerController = GlobalKey<ScaffoldState>();

  //var _username = TextEditingController().obs;
  var _password = TextEditingController().obs;
  var _email = TextEditingController().obs;

  //TextEditingController get usernameController => _username.value;
  //set phoneNumberText(String value) => _username.value.text = value;

  TextEditingController get passwordController => _password.value;
  set passwordText(String value) => _password.value.text = value;

  TextEditingController get emailController => _email.value;
  set emailText(String value) => _email.value.text = value;

  Register? getRegisterModel = Register().obs();
  Rx<Register> _registerModel = Register().obs;
  Register get registerModel => _registerModel.value;

  set registerModel(Register value) => _registerModel.value = value;


  Future getRegister() async {
    
      BuildContext context = registerController.currentContext!;

      BaseHttpModel response = (await AuthServices().getRegister(Register(
        email: emailController.value.text,
        password: passwordController.value.text,
      )));

      if (response.status == BaseModelStatus.Ok) {
        getRegisterModel = response.data;
        registerModel = response.data;
        debugPrint("başarılı "+response.data.toString());
      } else {
        debugPrint("Başarısız "+response.data.toString());
        debugPrint(emailController.value.text + passwordController.value.text);
      }
    
  }
}
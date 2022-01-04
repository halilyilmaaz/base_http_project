
import 'package:base_http_project/app/BL/general/authentication.dart';
import 'package:base_http_project/app/constant/enum/loading_status_enum.dart';
import 'package:base_http_project/app/model/reqponse/BaseModel.dart';
import 'package:base_http_project/app/model/request/login_model.dart';
import 'package:base_http_project/app/model/request/register_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final GlobalKey loginKey = GlobalKey<ScaffoldState>();
  


  var _username = TextEditingController().obs;
  var _password = TextEditingController().obs;
  var _email = TextEditingController().obs;

  TextEditingController get usernameController => _username.value;

  set phoneNumberText(String value) => _username.value.text = value;

  TextEditingController get passwordController => _password.value;

  set passwordText(String value) => _password.value.text = value;

  TextEditingController get emailController => _email.value;

  set emailText(String value) => _email.value.text = value;

  Login? getLoginModel = Login().obs();

 
  Rx<Login> _loginModel = Login().obs;

  Login get loginModel => _loginModel.value;

  set loginModel(Login value) => _loginModel.value = value;



  Future getLoginApi() async {
    
      BuildContext context = loginKey.currentContext!;

      BaseHttpModel response = (await AuthServices().getLogin(Login(
        username: usernameController.value.text,
        password: passwordController.value.text,
      )));

      if (response.status == BaseModelStatus.Ok) {
        getLoginModel = response.data;
        loginModel = response.data;

        
      } else {
        debugPrint(response.message);
        
      }
    
  }
}
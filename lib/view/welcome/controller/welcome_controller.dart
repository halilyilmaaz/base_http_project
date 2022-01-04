
import 'package:base_http_project/view/login/login_main.dart';
import 'package:base_http_project/view/register/register_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController{
  final GlobalKey welcomeKey = GlobalKey<ScaffoldState>();

  void gotoLogin(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginMain()));
  }
  void gotoRegister(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterMain()));
  }
}
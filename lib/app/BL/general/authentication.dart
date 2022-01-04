
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:base_http_project/app/constant/App/http_url.dart';
import 'package:base_http_project/app/constant/enum/loading_status_enum.dart';
import 'package:base_http_project/app/model/reqponse/BaseModel.dart';
import 'package:base_http_project/app/model/request/login_model.dart';
import 'package:base_http_project/app/model/request/register_model.dart';
import 'package:base_http_project/core/service/HttpClient.dart';

class AuthServices{

  Future<BaseHttpModel<Login>> getLogin(Login model) async {
    try {
      var response = await HttpClient()
          .post(HttpUrl.loginUrl, apiParameters: model.toJson(), header: {});
      print(response?.body);
      if (response!.statusCode == HttpStatus.ok) {
        Login getLoginResponseModel =
            loginFromJson(utf8.decode(response.bodyBytes));
        return BaseHttpModel<Login>(
            status: BaseModelStatus.Ok, data: getLoginResponseModel);
      } else {
        return BaseHttpModel(status: BaseModelStatus.Error);
      }
    } catch (e) {
      log(e.toString(), name: 'Api Error: getService');
      return BaseHttpModel(status: BaseModelStatus.Error);
    }
  }

  Future<BaseHttpModel<Register>> getRegister(Register model) async {
    try {
      var response = await HttpClient().post(HttpUrl.registerUrl, apiParameters: model.toJson(), header: {});
      print(response?.body);
      if (response!.statusCode == HttpStatus.ok) {
        Register getRegisterResponseModel =
            registerFromJson(utf8.decode(response.bodyBytes));
        return BaseHttpModel<Register>(
            status: BaseModelStatus.Ok, data: getRegisterResponseModel);
      } else {
        return BaseHttpModel(status: BaseModelStatus.Error);
      }
    } catch (e) {
      log(e.toString(), name: 'Api Error: getService');
      return BaseHttpModel(status: BaseModelStatus.Error);
    }
  }
}
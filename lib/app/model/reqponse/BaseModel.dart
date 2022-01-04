

import 'package:base_http_project/app/constant/enum/loading_status_enum.dart';

class BaseHttpModel<T> {
  BaseModelStatus status;
  T? data;
  String? message;

  BaseHttpModel({
    required this.status,
    this.data,
    this.message,
  });
}
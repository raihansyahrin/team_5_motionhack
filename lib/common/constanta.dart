
import 'package:dio/dio.dart';

const apiUrl = "";
Dio dio = Dio(
  BaseOptions(
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
    },
    validateStatus: (statusCode) {
      return statusCode! < 500; 
    },
  ),
);

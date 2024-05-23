import 'package:dio/dio.dart';
import 'package:f_lesson_17/model/user_model.dart';
import 'package:flutter/material.dart';

class ApiService {
  Future<List<UserModel>> getAllUSer() async {
    String url = 'https://fakestoreapi.com';
    Dio dio = Dio(BaseOptions(baseUrl: url));

    try {
      var response = await dio.get('/users');
      if (response.statusCode == 200) {
        var data = response.data as List;
        var users = data.map((e) => UserModel.fromJson(e)).toList();
        return users;
      }
    } on DioException catch (e) {
      debugPrint(e.message);
    }
    return [];
  }
}

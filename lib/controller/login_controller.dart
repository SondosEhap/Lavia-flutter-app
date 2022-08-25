import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lavia_1/database/dio-helper.dart';
import 'package:lavia_1/database/dio_exceptions.dart';
import 'package:lavia_1/database/end_points.dart';
import 'package:lavia_1/model/login_model.dart';

class LoginController{

LoginModel? loginModel;
    signIn({required String email,required String password})async{

     await DioHelper.postData(url: login, data: {
        "email":email,
        "password":password
      }).then((value) {

        loginModel = LoginModel.fromJson(value.data);
        print(loginModel!.data!.accessToken);

      }).catchError((onError){
        if(onError is DioError){
          final message = DioExceptions.fromDioError(onError);
          print(message);
        }
      });
    }
}
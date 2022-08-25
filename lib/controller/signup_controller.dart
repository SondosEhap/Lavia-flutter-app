import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lavia_1/database/dio-helper.dart';
import 'package:lavia_1/database/dio_exceptions.dart';
import 'package:lavia_1/database/end_points.dart';
import 'package:lavia_1/model/signup_model.dart';

class SignUpController{
  SignUpModel?signupmodel;

  signUp({required String email,required String password,required String firstname,required String lastName})
  async{
    await DioHelper.postData(url:signup ,data:{
    "email": email, "password": password, "firstName": firstname,  "lastName": lastName}).then((value) {

      signupmodel=SignUpModel.fromJson(value.data);
      print(signupmodel!.data!.accessToken);
    }).catchError((onError){
      if(onError is DioError){
        final message = DioExceptions.fromDioError(onError);
        print(message);
       }
    });
  }
}
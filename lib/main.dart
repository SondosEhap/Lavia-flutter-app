import 'package:flutter/material.dart';
import 'package:lavia_1/database/dio-helper.dart';

import 'package:lavia_1/view/screens/home.dart';
import 'package:lavia_1/view/screens/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Login(),


    );
  }
}

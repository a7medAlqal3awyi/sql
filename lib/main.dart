import 'package:flutter/material.dart';
import 'package:projects/home_app.dart';
import 'package:projects/reveiw.dart';
//import 'package:projects/home_screen.dart';
//import 'package:projects/login_screen.dart';
//import 'package:projects/modules/login/login_screen.dart';

import 'layout/home_layout.dart';

//import 'modules/bmi/bmi_screen.dart';
//import 'counter_screen.dart';
//import 'package:projects/users_model.dart';


//import 'mess_Screen.dart';
//import 'messenger_screen.dart';

void main() {
  runApp( MyApp());



}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
    home:HomeApp(),
    );
  }

}

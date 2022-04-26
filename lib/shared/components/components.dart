import 'package:flutter/material.dart';

Widget defaultBottom ({
  bool isUpperCase = true,
  double width=double.infinity ,
  Color background = Colors.blue,
  required Function function,
  required String text,

}) =>  Container(
  width: width,
  color:background,
  child: MaterialButton(
    onPressed:( ){

    } ,
    child: Text(
      isUpperCase? text.toUpperCase(): text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),


  ),
);
Widget defaultTextFormField(
    {
  required TextEditingController controller,
  required TextInputType type,
     onSubmit,
     onChange,
      bool isPassword =false,
  required Function validate,
  required String label,
    // required validate,
  required IconData prefix,
        suffix,
      suffixPressed,

})=>  TextFormField(
controller: controller,
keyboardType:type,
obscureText:isPassword    ,
onChanged: onChange,

onFieldSubmitted: onSubmit,

  //validator:validate,

decoration:InputDecoration(
labelText: label ,
border: OutlineInputBorder(),
prefixIcon: Icon(prefix),
  suffixIcon: suffix != null? IconButton(
    onPressed:suffixPressed ,
      icon: Icon(suffix)):null,

),
);

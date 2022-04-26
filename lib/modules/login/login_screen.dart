import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

var emailController=TextEditingController();

var passwordController=TextEditingController();

var formKey = GlobalKey<FormState>();

bool isPassword=true;




class LoginScreen   extends StatefulWidget
{


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                defaultTextFormField(

                  controller:emailController ,
                  label: 'Email',
                  type:TextInputType.emailAddress,
                  prefix: Icons.email,
                  validate: (String value){
                    if (value.isEmpty){
                      return 'email must not be empty';
                    }

                    return null ;
                  },

                ),
                SizedBox(
                  height: 20,
                ),
            defaultTextFormField(

              controller:passwordController ,
              label: 'password',
              type:TextInputType.visiblePassword ,
              prefix: Icons.lock,
              suffix:isPassword? Icons.visibility:Icons.visibility_off,
              suffixPressed:(){
                  setState(() {
                    isPassword =! isPassword;
                  });
              } ,
              isPassword: isPassword,
              validate: (String value){
                if (value.isEmpty){
                  return 'password  must not be empty';
                }
                return null ;
              },
            ),

              SizedBox(
                  height: 20,
                ),
                defaultBottom(

                  text: 'login',
                  function: (){
                    if(formKey.currentState!.validate())
                      {
                        print(emailController.text);
                        print(passwordController.text);
                      }

                  }
                ),

                SizedBox(height: 20,),

 ],
            ),
          ),
        ),
      ),
    );


  }
}

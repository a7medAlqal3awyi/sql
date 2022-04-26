import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  Reveiw extends StatelessWidget {


  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('Login',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold ,
                ),),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType:TextInputType.emailAddress ,
                  onFieldSubmitted: (value)
                  {
                    print(value);
                  },
                  onChanged:(value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),

                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField (
                  controller: passwordController,
                  keyboardType:TextInputType.visiblePassword ,
                  obscureText: true,
                  onFieldSubmitted: (value)
                  {
                    print(value);
                  },
                  onChanged:(value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: 'Password',
                    border: OutlineInputBorder(),

                  ),

                ),
                SizedBox(
                  height: 20.0,
                ),
                Container (
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: ()
                  {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: Text(
                    'login',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ) ,
                  ),
                ),

                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(onPressed: (){}, child:
                    Text(
                      'Register New',
                    ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

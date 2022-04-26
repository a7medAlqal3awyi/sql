
import 'package:flutter/material.dart';

import '../../models/users/users_models.dart';


class  UserScreen extends StatelessWidget
{
List<UserModel> users =[
  UserModel(
    id: 1,
    name: ' Ahmed',
    phone: '+2010102002',
  ),
  UserModel(
    id: 2,
    name: ' khaled ',
    phone: '+9956445446',
  ),
  UserModel(
    id: 8,
    name: 'ali',
    phone: '+955959',
  ),
  UserModel(
    id: 1,
    name: ' Ahmed',
    phone: '+2010102002',
  ),
  UserModel(
    id: 2,
    name: ' khaled ',
    phone: '+9956445446',
  ),
  UserModel(
    id: 8,
    name: 'ali',
    phone: '+955959',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'users'
        ),
      ),
      body:ListView.separated(
          itemBuilder: (context, index)=>buildUserItem(users[index]),
          separatorBuilder:(context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0
            ),
            child: Container(
              width: double.infinity,
              height: 1,
              color:  Colors.grey[300],
            ),
          ),

          itemCount: users.length
      )
    );
  }
  Widget buildUserItem(UserModel user)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text('')

        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Ahmed Khaled',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '+201025241490',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

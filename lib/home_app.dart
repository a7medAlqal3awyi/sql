import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/modules/sqldb.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class HomeApp extends StatefulWidget {

  Sqldb sql = Sqldb();
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'Home Page',
        ) ,

      ),
      body:Container(
        child: Column(
          children: [
            Center(
              child:
              MaterialButton(
                onPressed: (){},
                color: (Colors.lightBlue ),
                textColor: Colors.black,
                child: Text(
                  'Read Data',
                  style:TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ) ,
                ),

              ),


            ),

            SizedBox(
              height: 20,
            ),
            Center(
              child:
              MaterialButton(
                onPressed: () async
                {
                  //int response= await sqlDb
                },
                color: (Colors.lightBlue ),
                textColor: Colors.black,
                child: Text(
                  'Insert Data',
                  style:TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ) ,
                ),

              ),


            ),
          ],
        ),
      ),

    );
  }
}

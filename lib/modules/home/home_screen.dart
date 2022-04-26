import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Ahmed App',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        actions:
        [
          IconButton(onPressed: () {},
              icon: Icon(Icons.search)),
          Column(
            children: [
              IconButton(
                onPressed: onNotification,
                icon: Icon(Icons.notification_important,
                ),
              ),
            ],
          ),

          IconButton(
            icon: Text('hi'),
            onPressed: () {
              print('hi');
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
              child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
                clipBehavior: Clip.antiAliasWithSaveLayer ,
              child: Stack(

                alignment: AlignmentDirectional.bottomCenter,

                children:
                [
                  Image(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__480.jpg',
                    ),
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 0,
                    ),
                    color:Colors.black.withOpacity(.7),
                    child: Text(
                      'Flower',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
void onNotification(){

  print ('notification clicked');
}
// 5555
// **


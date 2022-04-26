

import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/modules/bmi_result/bmi_result_screen.dart';

class BmiScreen  extends StatefulWidget {
  @override
  _BmiScreenState  createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen > {

  bool isMale =true ;
  double height =120.0;
  int weight = 40 ;
  int age =20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI calcuLator',
        ),

      ),
      body:Column(
        children: [
          // first row
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child:
              // first row
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap:(){
                        setState(() {
                          isMale=true;

                        });

                      } ,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:AssetImage('assets/images/male.jpg'),
                              height: 90,
                              width: 90,

                            ),
                           
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale? Colors.blue : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage('assets/images/female.jpg'),
                              height: 90,
                              width: 90,

                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:!isMale?Colors.blue: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // second row
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text (
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic ,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Slider(value: height,
                        max: 220,
                        min: 80,
                        onChanged: (value ){
                      setState(() {
                        height =value ;
                      });
                      print(value.round());

                        }
                        )
                  ],
                ),
              ),
            ),
          ),
          // third row
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Age',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                           Text(
                             '${age}',
                             style: TextStyle(
                                 fontSize: 40,
                                 fontWeight: FontWeight.w900
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                    age--;
                                   });
                                 },
                                 heroTag: ' age--',
                                 mini:true ,
                               child: Icon(
                                 Icons.remove
                               ),
                               ),

                               FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     age++;
                                   });
                                 },
                                 heroTag: ' age++',
                                 mini:true ,
                                 child: Icon(
                                     Icons.add,
                                 ),
                               ),
                             ],
                           ),
                         ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('weight',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text (
                              '${weight}',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: ' weight--',
                                  mini:true ,
                                  child: Icon(
                                      Icons.remove
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: ' weight++',
                                  mini:true ,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ),


          Container(
            width: double.infinity,
            child: MaterialButton(
              onPressed: (){
                double result = weight / pow (height / 100,  2);
                print(result.round());

                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (context)=> BMIResultScreen(
                           age:age ,
                           isMale: isMale,
                           result: result.round(),
                         ),
                     ),
                 );
              },
              height: 50.0,
              color: Colors.blue,
              child: Text(
                'calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}

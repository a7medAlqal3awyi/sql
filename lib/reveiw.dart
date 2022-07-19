import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator'
        ),

      ),
      body:Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(

                  children: [
                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cake_rounded,
                            size: 40,),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20 ,
                    ),
                    Expanded(
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cake_rounded,
                              size: 40,),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             ),

          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(

                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                         'HEIGHT',
                       style: TextStyle(
                         fontSize: 25,
                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline:TextBaseline.alphabetic  ,
                       children: [
                           Text(
                           '180',
                           style: TextStyle(
                             fontSize: 040,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           'cm',
                           style: TextStyle(
                             fontSize: 20,
                           //  fontWeight: FontWeight.bold,
                           ),
                         ),
                       ],
                     ),


                   ],
                  )
                ],
              ),),
          Expanded(
              child: Container(
                color: Colors.cyanAccent,
              )),
          Container(
            width: double.infinity,
            child: MaterialButton(onPressed: (){},
              height: 50,
              color: Colors.blue,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white
                ),
              ),

            ),
          )

        ],
      ) ,
    );
  }
}

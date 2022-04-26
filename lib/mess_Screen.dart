

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
         children: [
           CircleAvatar(
             radius: 20.0,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4',
              ),
           ),
           SizedBox(
             width: 10.0,
           ),
           Text(
               'chats',
             style: TextStyle(
               color: Colors.black,
             ),
           ),
         ],
       ),
        actions: [
          IconButton(onPressed: (){}, 
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white ,
                child: Icon(
                    Icons.camera_alt,
                  size: 23,
                  color: Colors.blue,
                ),
              )),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: (){},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white ,
                child: Icon(
                  Icons.edit,
                  size: 23,
                  color: Colors.blue,
                ),
              ))
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              //  Search
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],

                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'search'
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //********************************************
              // stories

              //********************************************
              // Message
                  //Listveiw
              Container(
                height: 120,
                child: ListView.separated(
                  shrinkWrap:true ,

                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>buildStoryItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    width: 20,
                  ),
                  itemCount: 15,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics( ),
                shrinkWrap:true ,
                  itemBuilder: (context, index)=> Row(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: [
                          CircleAvatar(
                            radius:30.0,
                            backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                              bottom: 5,
                              end: 3,
                            ),
                            child: CircleAvatar(
                              radius:7.0,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // NAME
                            Text(
                              'Ahmed Alkalawyi',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // MESSAGE AND TIME
                            Row(
                              children: [
                                //message
                                Expanded(
                                  child: Text('hello my name is ahmed ',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis
                                    ,),
                                ),

                                //  blue point
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),

                                // time
                                Text(
                                    '02:00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  separatorBuilder:(context, index)=>SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 20)
            ],
          ),
        ),
      ),

    );
  }

  /*   1)build item

       2)build list

       3)add item to list

   */

  Widget buildChatItem()=>  Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius:30.0,
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4',
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 5,
              end: 3,
            ),
            child: CircleAvatar(
              radius:7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // NAME
            Text(
              'Ahmed Alkalawyi',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // MESSAGE AND TIME
            Row(
              children: [
                //message
                Expanded(
                  child: Text('hello my name is ahmed ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis
                    ,),
                ),

                //  blue point
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),

                // time
                Text(
                    '02:00 pm'
                ),
              ],
            ),
          ],
        ),
      ),

    ],
  );

  Widget buildStoryItem()=> Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius:30.0,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4',
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 5,
                end: 3,
              ),
              child: CircleAvatar(
                radius:7.0,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text(
          'Ahmed Khaled hamed',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(

          ),


        )

      ],
    ),
  );

}

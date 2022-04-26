
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {

 
   @override
   Widget build(BuildContext context)
     {
     return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
         elevation: 0.0,
         titleSpacing: 20,
         title: Row(
           children: [
             CircleAvatar(
               radius:20 ,
               backgroundImage: NetworkImage(
                 'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4'
               ),
               backgroundColor: Colors.blue,
             ),
             SizedBox(
               width: 15.0,
             ),
             Text(
               'chats',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 20.0,
               ),
             ),
           ],
         ),
         actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
          ),
           IconButton(
               onPressed: (){},
               icon: CircleAvatar(
                 radius: 15.0,
                 backgroundColor: Colors.blue,
                 child: Icon(
                   Icons.edit,
                   color: Colors.white,
                 ),
               ),
           )
         ],

       ),

       body: Padding(
         padding: const EdgeInsets.all(20.0),
         child: SingleChildScrollView(
           child: Column(

             crossAxisAlignment:CrossAxisAlignment.start,
             children: [

              // search
               Container(

                 decoration: BoxDecoration(

                   borderRadius:BorderRadius.circular(5.0) ,
                   color: Colors.grey[300],
                 ),
                 padding: EdgeInsets.all(5.0),
                 child: Row(
                   children: [
                     Icon(
                       Icons.search,
                     ),
                     SizedBox(
                       width: 15.0,
                     ),
                     Text(
                       'Search',
                     ),

                   ],
                 ),
               ),
               SizedBox(
                 height: 10.0,
               ),
               Container(
                 height: 10,
                 child: ListView.separated(
                   shrinkWrap: true,
                   scrollDirection:Axis.horizontal ,
                   itemBuilder:(context,index) =>buildStoryItem(),
                   itemCount:10 ,
                   separatorBuilder: (context , index)=> SizedBox(
                     width: 20,
                   ),
                 ),
               ),
               SizedBox(
                 height: 15,
               ),
               ListView.separated(
                 physics:NeverScrollableScrollPhysics (),
                 shrinkWrap: true,
                 itemBuilder:(context, index) => buildChatItem(),
                 separatorBuilder: (context, index) => SizedBox(
                   height: 20.0,
                 ) ,
                 itemCount: 30,
               ),

             ],
           ),
         ),
       ),
     );
   }
   //   chats
   Widget buildChatItem()=> Row(
     children: [
       Stack   (
         alignment: AlignmentDirectional.bottomEnd,
         children: [
           CircleAvatar(
             radius:25 ,
             backgroundImage: NetworkImage(
                 'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4'
             ),
             backgroundColor: Colors.blue,
           ),
           Padding(
             padding: const EdgeInsets.only(

               bottom: 3.0,
               left:3.0,
             ),
             child: CircleAvatar(
               radius:7 ,
               backgroundImage: NetworkImage(
                   'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4'
               ),
               backgroundColor: Colors.red,
             ),
           ),
         ],
       ),
       SizedBox(
         width: 20.0,
       ),

       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text(
               'Ahmed Khaled',
               style: TextStyle(
                 fontSize: 17.0,
                 fontWeight: FontWeight.bold,
               ),
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
             ),
             Row(
               children: [
                 Expanded(
                   child: Text(
                     'Hello my name is ahmed',
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
                 SizedBox(
                   height: 5,
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Container(
                     width: 7.0,
                     height: 7.0,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       shape: BoxShape.circle,
                     ),
                   ),
                 ),
                 Text(
                   '02:00 pm',
                 ),
               ],
             ),

           ],
         ),
       ),
     ],

   );
    //    stories
   Widget buildStoryItem() => Container(
     width: 60.0,
     child: Column(
       children: [
         Stack   (
           alignment: AlignmentDirectional.bottomEnd,
           children: [
             CircleAvatar(
               radius:25 ,
               backgroundImage: NetworkImage(
                   'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4'
               ),
               backgroundColor: Colors.blue,
             ),
             Padding(
               padding: const EdgeInsets.only(

                 bottom: 3.0,
                 left:3.0,
               ),
               child: CircleAvatar(
                 radius:7 ,
                 backgroundImage: NetworkImage(
                     'https://avatars.githubusercontent.com/u/100479326?s=400&u=1cd99c943f2f8b92251e8ec9e35a285946da1c04&v=4'
                 ),
                 backgroundColor: Colors.red,
               ),
             ),
           ],
         ),
         SizedBox(
           height: 6.0,
         ),
         Text(
           'Ahmed Khaled hamed',
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
         ),
       ],
     ),
   );

 }
 //   1)build item

   //  2)build list

 //   3)add item too list
 
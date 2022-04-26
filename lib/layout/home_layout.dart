import 'package:flutter/material.dart';
import 'package:projects/modules/archivrd_tasks/archived_tasks_screen.dart';
import 'package:projects/modules/done_tasks/done_tasks_screen.dart';
import 'package:projects/modules/new_tasks/new_tasks_screen.dart';
//import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget {

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
{

int currentIndex =0;

 late Database database ;

List <Widget> screens=[
  NewTasksScreen(),
  DoneTasksScreen(),
  ArchivedTasksScreen(),
];

List <String> titles =[
  ' New Tasks',
  'Done Tasks',
  'Archived Tasks',
];
 @override
  void initState() {

    super.initState();

    createDatabase();
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async
        {
          // try
          // {
          //   var name = await getName();
          //   print(name);
          //   throw('some error');
          //
          // }catch(error){
          //   print('error${error.toString()}');
          // }
          insertDatabase();

        },
        child: Icon(Icons.add),

      ),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed ,
        currentIndex: currentIndex,

        onTap:(index){
          setState(() {
            currentIndex=index;
          });
        } ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'tasks',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'Done',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Archive',

          ),
        ],
      ),
      body: screens[currentIndex],
    );

    }
Future<String> getName() async
{
  return 'Ahmed Khaled';
}
void createDatabase()async
{
   database= await openDatabase(

    'todo.db',
    version: 1,
    onCreate: (database,version) async
    {

       await database.execute('CREATE TABLE tasks (id INTEREG pprimary key ,title TEXT,date TEXT,status TEXT)').then((value) {
         print('database created');

       }).catchError((error){
         print('error when created table ${error.toString()}');
       });
    },
    onOpen: (database)
  {
     print('database oppened');
  },
  );
}
void insertDatabase()
{
  database.transaction((txn)
  {
  txn.rawInsert('INSERT INTO tasks(title ,date , title , status )VALUE ("first task ","0232","564","new")').then((value) {
    print('$value inserting  successfully ');

  }).catchError((error){
    print('error when inserting    ${error.toString()}');
  });
  return null! ;
  });
}

}
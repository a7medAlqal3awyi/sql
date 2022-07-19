import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects/modules/archivrd_tasks/archived_tasks_screen.dart';
import 'package:projects/modules/done_tasks/done_tasks_screen.dart';
import 'package:projects/modules/new_tasks/new_tasks_screen.dart';
import 'package:sqflite/sqflite.dart';

//
// create db
// create table
// open db
// insert db
// get from db
// update to db
// delete

class HomeLayout extends StatefulWidget {


  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];

  List<String>titles =
  [
    'Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  late Database database;
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
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],

      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          insertToDatabase();
        },
        child: Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          print(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu,),
              label: 'Tasks'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle,),
              label: 'Done'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive_outlined,),
              label: 'Archived'
          ),

        ],
      ),

    );
  }


  Future<String> getName() async
  {
    return 'Ahmed khaled ';
  }
  void createDatabase()async
  {
    database= await openDatabase(
     'todo.db',
     version: 1,
     onCreate:(database, version )
       {

         print('database created');
          database.execute(
            'CREATE TABLE tasks(id INTEGER PRIMARY KET,title TEXT,date TEXT,time TEXT,status TEXT'
                ')'
          ).then((value)
          {
            print('table created');
          }).catchError((error)
          {
            print('Error when creating table ${error.toString()}');
          });
       },
     onOpen: (database)
       {
         print('database opened');

       }
   );
  }

  void insertToDatabase()
  {
    database.transaction((txn)
    {
      txn.rawInsert(
          'INSERT INTO tasks(title, date ,time ,status) VALUES("first task","022","655","new ")')
          .then((value) {
        print('$value iserted successfully');
      }).catchError((error)
      {
        print('Error when Inserting record ${error.toString()}');

      });
      return null!  ;
    });

  }
}

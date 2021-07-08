import 'package:flutter/material.dart';
import 'AddTodo/AddTodoBottomSheet.dart';
import 'list/listFragment.dart';
import 'settings/settingsFragment.dart';

class HomeScreen extends StatefulWidget {
static final Route_Name='home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> screens=[//he made a fn .
    ToDoListFragment(),
    SettingsFragment(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      toolbarHeight: 120.0,
      title: Text(
        'To Do List App',
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showModalBottomSheet(context: context, builder:(builder){
            return AddTodoBottomSheet();
            },
            isScrollControlled: true,
          );
        } ,

        //backgroundColor: MyThemeData.whiteColor,//?????
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,


      bottomNavigationBar: BottomAppBar(
       shape:CircularNotchedRectangle(),
        notchMargin: 8.0,
       clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Sittings',
            ),
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_2/home/Settings/settings_tap.dart';
import 'package:todo_2/home/TasksList/tasks_list.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <Widget> appTaps = [TasksListTap(),SettingsTap()];
  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      body: appTaps[selectedIndex],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            selectedIndex = index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(side: BorderSide(color: Colors.white,width: 4)),
        onPressed: (){},child: Icon(Icons.add),
      ),
    );
  }
}

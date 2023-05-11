import 'package:flutter/material.dart';
import 'package:todo_2/home/home_screen.dart';
import 'package:todo_2/my_theme.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{

  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MyTheme.lightTheme ,
      themeMode:ThemeMode.light ,
      debugShowCheckedModeBanner: false,
      title: "ToDo",
      routes:{
        HomeScreen.routeName : (_)=>HomeScreen()
      } ,
      initialRoute:HomeScreen.routeName ,
    );
  }

}
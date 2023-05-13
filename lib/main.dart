import 'package:flutter/material.dart';
import 'package:todo_2/home/home_screen.dart';
import 'package:todo_2/my_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
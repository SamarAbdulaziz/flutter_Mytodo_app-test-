import 'package:flutter/material.dart';
import 'package:todo_route_app/ui/homeScreen/DataBase/MyDataBase.dart';
import 'package:todo_route_app/ui/homeScreen/HomeScreen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  initDataBase();
  runApp(MyApp());
}
class MyThemeData{
  static final primaryColor=Color(0xFF5D9CE9);
  static final blackColor=Color(0xFF3636369);
  static final whiteColor=Color(0xFFFFFFFF);
  static final accentColor=Color(0xFFDFECDB);

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primaryColor: MyThemeData.primaryColor,
       accentColor: MyThemeData.accentColor,
       floatingActionButtonTheme: FloatingActionButtonThemeData(
       backgroundColor: MyThemeData.primaryColor,
       ) ,
     ),
     routes: {
       HomeScreen.Route_Name:(context)=>HomeScreen(),
     },
     initialRoute: HomeScreen.Route_Name,

   );
  }

}
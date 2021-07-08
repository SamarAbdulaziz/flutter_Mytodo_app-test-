import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_route_app/ui/homeScreen/DataBase/MyDataBase.dart';
import 'package:todo_route_app/ui/homeScreen/HomeScreen.dart';

import 'Provider/ThemeProvider.dart';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';

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
  static final lightTheme=ThemeData(
    scaffoldBackgroundColor:MyThemeData.accentColor,
    primaryColor: MyThemeData.primaryColor,
    accentColor: MyThemeData.accentColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: MyThemeData.primaryColor,
    ) ,
  );
  static final darkTheme=ThemeData(
    scaffoldBackgroundColor:MyThemeData.blackColor,
    primaryColor: MyThemeData.primaryColor,
    accentColor: MyThemeData.accentColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: MyThemeData.primaryColor,
    ) ,
  );

}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
     create: (context)=>ThemeProvider(),//this func will create the object that i will use in the whole app
     builder: (context,Widget){
       final themeProvider=Provider.of<ThemeProvider>(context);
       return MaterialApp(
       debugShowCheckedModeBanner: false,
       themeMode:themeProvider.themeMode,
       theme: MyThemeData.lightTheme,
       darkTheme:MyThemeData.darkTheme,
       routes: {
         HomeScreen.Route_Name:(context)=>HomeScreen(),
       },
       initialRoute: HomeScreen.Route_Name,

     );
     },
   );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void manin(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,

   );
  }

}
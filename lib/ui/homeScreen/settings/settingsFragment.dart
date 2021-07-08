import 'package:flutter/material.dart';
import 'package:todo_route_app/main.dart';

import 'ThemeBottomSheet.dart';

class SettingsFragment extends StatefulWidget{

  @override
  _SettingsFragmentState createState() => _SettingsFragmentState();
}

class _SettingsFragmentState extends State<SettingsFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Mode',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyThemeData.blackColor,

            ),
          ),
         InkWell(
           onTap: (){
             showThemeButtomSheet();
           },
           child: Container(
             margin: EdgeInsets.all(8),
             decoration: BoxDecoration(
               color: MyThemeData.whiteColor,
               border: Border.all(
                   width: 1,
                   color: MyThemeData.primaryColor),
                 borderRadius: BorderRadius.circular(8)

             ),
             child: Row(
               children: [
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       'Light',
                       style:TextStyle(
                         color: MyThemeData.primaryColor,
                       ) ,
                     ),
                   ),
                 ),
                 Icon(Icons.arrow_drop_down)
               ],
             ),
           ),
         ),
        ],
      ),
    );
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return ThemeBottomSheet();
        }
        );
  }
}

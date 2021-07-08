import 'package:flutter/material.dart';
import 'package:todo_route_app/main.dart';

class ThemeBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'light',
                  style: TextStyle(
                    color: MyThemeData.primaryColor,
                  ),
                ),
              ),
              Icon(Icons.check,
                color:MyThemeData.primaryColor,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Dark',
                  style: TextStyle(
                    color: MyThemeData.primaryColor,
                  ),
                ),
              ),
              Icon(Icons.check,
                color:MyThemeData.primaryColor,
              ),
            ],
          ),
        ],
      ),

    );
  }
}

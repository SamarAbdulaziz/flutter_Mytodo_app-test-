import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_route_app/main.dart';
import 'package:todo_route_app/ui/homeScreen/list/todoItem/todoItem.dart';

class ToDoListFragment extends StatefulWidget {

  @override
  _ToDoListFragmentState createState() => _ToDoListFragmentState();
}

class _ToDoListFragmentState extends State<ToDoListFragment> {
  DateTime selectedDay=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyThemeData.accentColor,
      child: Column(
        children: [
          TableCalendar(
            headerVisible: false,
            firstDay: DateTime.now().subtract(Duration(days: 30)),
            lastDay: DateTime.now().add(Duration(days: 30)),
            calendarStyle: CalendarStyle(
              selectedTextStyle:TextStyle(
                fontSize: 16.0,
                color: MyThemeData.whiteColor,
              ),
              selectedDecoration: BoxDecoration(
                color: MyThemeData.primaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              defaultDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              defaultTextStyle: TextStyle(
                fontSize: 16.0,
                color: MyThemeData.blackColor,
              ),
            ),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.week,
            daysOfWeekStyle:DaysOfWeekStyle(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            selectedDayPredicate: (day) {
              return isSameDay(day,selectedDay);
            },
            onDaySelected: (newSelectedDay, focusedDay) {
              setState(() {
                selectedDay = newSelectedDay;
              });
            },
          ),
          Expanded(
              child: ListView.builder(
                  itemCount:5,
                  itemBuilder:(context,index)=>TodoItem(),
              ),
          ),
        ],
      ),
    );
  }
}

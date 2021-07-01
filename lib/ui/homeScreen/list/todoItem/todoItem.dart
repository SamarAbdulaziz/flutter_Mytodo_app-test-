import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_route_app/main.dart';

class TodoItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Slidable(
      closeOnScroll: true,
      actionExtentRatio: 0.3,
      child: Container(
        padding: EdgeInsets.all(30.0),
        height: 120.0,
        decoration: BoxDecoration(
          color: MyThemeData.whiteColor,
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: EdgeInsets.only(top:4.0,bottom:4.0,right: 4.0 ),
        child:Row(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: MyThemeData.primaryColor,
              ),
              width: 4.0,
              height:80.0 ,
            ),
            Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Play Basket Ball',
                        style: TextStyle(
                          color: MyThemeData.primaryColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        Text(
                          '10:30 am',
                          style: TextStyle(
                            color: MyThemeData.primaryColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
            ),
           Container(
             margin: EdgeInsets.all(12.0),
             width: 40,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8),
               color: MyThemeData.primaryColor,
             ),
             child: Icon(
               Icons.check_rounded,
               color: MyThemeData.whiteColor,
               size: 30.0,
             ),
           ),
          ],
        ),
      ),
      actionPane: SlidableScrollActionPane(),
      actions: [
        // IconSlideAction(
        //   icon: Icons.add,
        //   color:Colors.green,
        //   caption: 'Add',
        // ),
        IconSlideAction(
          iconWidget: Container(
            //color: Colors.transparent,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft:  Radius.circular(12)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete,
                color: MyThemeData.whiteColor,
                ),
                Text(
                  'Delete',
                  style: TextStyle(
                    color: MyThemeData.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:todo_route_app/main.dart';
// import 'package:todo_route_app/ui/homeScreen/DataBase/modal/Todo.dart';
//
// class TodoItem extends StatelessWidget {
//   Todo todo;
//   Function onDeleteAction,onItemCheck,onItemPressed;
//   TodoItem(this.todo,this.onDeleteAction,this.onItemCheck,this.onItemPressed);
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: (){onItemPressed(todo,context);},
//       child: Container(
//         margin: EdgeInsets.symmetric(vertical:4,horizontal: 12),
//         child: Slidable(
//           closeOnScroll: true,
//           actionExtentRatio: .3,
//           child: Container(
//             decoration: BoxDecoration(
//                 color: MyThemeData.whiteColor,
//                 borderRadius: BorderRadius.circular(12)
//             ),
//             padding: EdgeInsets.all(15),
//             child: Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(2),
//                     color: todo.isDone?Colors.green:MyThemeData.primaryColor,
//                   ),
//                   width: 4,
//                   height: 80,
//                 ),
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.only(left: 12),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(todo.title,style:
//                           TextStyle(fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                               color:todo.isDone?Colors.green: MyThemeData.primaryColor),),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Row(
//
//                             children: [
//                               Icon(Icons.calendar_today_outlined),
//                               Text(todo.dateTime.toString(),textAlign: TextAlign.center,)
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: (){
//                     onItemCheck(todo);
//                   },
//                   child:todo.isDone?
//                   Container(
//                       margin: EdgeInsets.all(12),
//                       padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Text('Done !',style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),))
//                       :Container(
//                     margin: EdgeInsets.all(12),
//                     padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: MyThemeData.primaryColor,
//                     ),
//                     child: Image(image: AssetImage('assets/images/icon_check.png'),),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           actionPane: SlidableScrollActionPane(),
//           actions: [
//
//             IconSlideAction(
//               onTap: (){
//                 onDeleteAction(todo);
//               },
//               color: Colors.transparent,
//               iconWidget: Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 margin: EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                     color: Colors.red,
//                     borderRadius: BorderRadius.only(topLeft: Radius.circular(12)
//                         ,bottomLeft: Radius.circular(12))
//                 ),
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(Icons.delete,color: Colors.white,),
//                       Text('delete',style: TextStyle(color: Colors.white),)
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

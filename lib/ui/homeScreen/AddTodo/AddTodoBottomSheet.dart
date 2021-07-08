import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_route_app/ui/homeScreen/DataBase/modal/Todo.dart';

class AddTodoBottomSheet extends StatefulWidget {

  @override
  _AddTodoBottomSheetState createState() => _AddTodoBottomSheetState();
}

class _AddTodoBottomSheetState extends State<AddTodoBottomSheet> {
  String title='';
  String content='';
  DateTime date=null;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,//it makes the text in start
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Add Todo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  onChanged:(newText){
                    title=newText;
                    } ,
                  decoration: InputDecoration(
                    labelText: 'title',
                    errorText: title.isEmpty? 'Enter a title':null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  onChanged:(newText){
                    content=newText;
                  },
                  maxLines: 4,
                  minLines: 4,
                  decoration: InputDecoration(
                    labelText: 'content',
                    errorText: content.isEmpty? 'Enter a content':null,
                  ),
                ),
              ),
              InkWell(
                onTap:(){
                  chooseDatedForTodo();
                } ,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child:date==null? Text(
                    'Select Date',
                   // textAlign: TextAlign.start, //it make no difference in this case
                  ):
                  Text(date.toString().substring(0,10)//0=>the first position 10=>the last position you can change it .
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                addTodoItem();
              },
                child: Text(
                    'Add'
                ),
              ),
            ],
          ),

        )
    );
  }
  void chooseDatedForTodo()async {
    var chosenDate= await showDatePicker(context: context,
        initialDate:DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    date = chosenDate;
  }
  void addTodoItem() async {
    Todo todo=Todo(title:title, content:content, dateTime: date,);
    var box=await Hive.openBox<Todo>(Todo.BOX_NAME);
    box.add(todo);
    Navigator.pop(context);
  }
}

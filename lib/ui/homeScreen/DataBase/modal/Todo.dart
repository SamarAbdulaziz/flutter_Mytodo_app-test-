import 'package:hive/hive.dart';



@HiveType(typeId: 0)
class Todo extends HiveObject{ //data class
  static final BOX_NAME='todos';

  @HiveField(0)
  String title;

  @HiveField(1)
  String content;

  @HiveField(2)
  DateTime dateTime;

  @HiveField(3)
  bool isDone;

  Todo({this.title,
    this.content,
    this.dateTime,
    this.isDone=false});
}
//flutter packages pub run build_runner build

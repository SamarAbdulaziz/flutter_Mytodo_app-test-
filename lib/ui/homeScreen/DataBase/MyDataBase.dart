import 'package:hive/hive.dart';
import "package:hive_flutter/hive_flutter.dart";

void initDataBase() async {
  await Hive.initFlutter();
  //Hive.registerAdapter(TodoAdapter());
}
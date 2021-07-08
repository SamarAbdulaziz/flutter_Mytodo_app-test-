import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
ThemeMode themeMode=ThemeMode.light;
bool isDarkModeEnabled(){
  return themeMode==ThemeMode.dark;
}
void toggleTheme(){
  if(themeMode==ThemeMode.light)
    themeMode=ThemeMode.dark;
    themeMode=ThemeMode.light;
    notifyListeners();

}



}
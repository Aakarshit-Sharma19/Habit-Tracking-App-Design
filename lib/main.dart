import 'package:flutter/material.dart';
import 'package:habits_app_ui/home_page.dart';

void main() => runApp(HabitsApp());

class HabitsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF272730),
        scaffoldBackgroundColor: Color(0xFF272730),
      ),
      home: HomePage(),
    );
  }
}

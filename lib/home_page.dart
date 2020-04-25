import 'package:flutter/material.dart';
import 'habit_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Habits')),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          HabitCard(
            habit: 'Meditation',
            frequency: 'Everyday',
            color: Color(0xFFFFB428),
          ),
          HabitCard(
            habit: 'English',
            frequency: '4 times a week',
            color: Color(0xFF5666F3),
          ),
          HabitCard(
            habit: 'Reading',
            frequency: '6 times a week',
            color: Color(0xFF50D890),
          ),
          HabitCard(
            habit: 'Sport',
            frequency: '3 times a week',
            color: Color(0xFFFF6B7A),
          ),
        ],
      ),
      
    );
  }
}

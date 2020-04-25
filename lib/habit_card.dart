import 'package:flutter/material.dart';
import 'package:habits_app_ui/constants.dart';

class HabitCard extends StatelessWidget {
  HabitCard(
      {@required this.habit, @required this.frequency, @required this.color});

  final String habit;
  final String frequency;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      decoration: BoxDecoration(
        color: Color(0xFF303038),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                habit,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Expanded(child: Container()),
              Text(
                frequency,
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal),
              ),
              Icon(
                Icons.notifications_none,
                color: color,
              ),
            ],
          ),
          SizedBox(height: 15.0,),
          WeekCalender(color),
        ],
      ),
    );
  }
}

class WeekCalender extends StatelessWidget {
  WeekCalender(this.color);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircularRing(
                day: 'Tue',
                date: '21',
                color: color,
              ),
              Circle(
                day: 'Mon',
                date: '20',
                color: color,
              ),
              Circle(
                day: 'Sun',
                date: '19',
                color: color,
              ),
              CircularRing(
                day: 'Sat',
                date: '18',
                color: color,
              ),
              Circle(
                day: 'Fri',
                date: '17',
                color: color,
              ),
              Circle(
                day: 'Thu',
                date: '16',
                color: color,
              ),
              Circle(
                day: 'Wed',
                date: '15',
                color: color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CircularRing extends StatelessWidget {
  CircularRing({this.day, this.date, this.color});
  final String day;
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          day,
          style: TextStyle(color: kTextColor),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 40.0,
          width: 40.0,
          child: Center(
            child: Text(
              date,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.normal,
                fontSize: 15.0,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xFF303038),
            shape: BoxShape.circle,
            border: Border.all(color: this.color, width: 2.0),
          ),
        ),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  Circle({this.day, this.date, this.color});
  final String day;
  final String date;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          day,
          style: TextStyle(color: kTextColor),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 40.0,
          width: 40.0,
          child: Center(
            child: Text(
              date,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 15.0,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
class HabitDetailsPage extends StatelessWidget
{
  final String habitName;

  HabitDetailsPage(this.habitName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit__Details'),
      ),
      body: Center(
        child: Text('Details for $habitName'),
      ),
    );
  }
}

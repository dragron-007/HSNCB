import 'package:flutter/material.dart';
import 'habit_details_page.dart';

class HabitListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Habit List'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Habit 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HabitDetailsPage('Habit 1')),
              );
            },
          ),
          ListTile(
            title: Text('Habit 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HabitDetailsPage('Habit 2')),
              );
            },
          ),
          // Add more habits as needed
        ],
      ),
    );
  }
}

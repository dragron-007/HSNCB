import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  // List of stories
  final List<Map<String, dynamic>> stories = [
    {
      'title': 'Inspiring Story of Overcoming Challenges 1',
      'imageURL': 'https://example.com/inspiring_image1.jpg',
      'content': 'Once upon a time... Story 1 content...',
    },
    {
      'title': 'Inspiring Story of Overcoming Challenges 2',
      'imageURL': 'https://example.com/inspiring_image2.jpg',
      'content': 'Once upon a time... Story 2 content...',
    },
    {
      'title': 'Inspiring Story of Overcoming Challenges 3',
      'imageURL': 'https://example.com/inspiring_image3.jpg',
      'content': 'Once upon a time... Story 3 content...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: stories.map((story) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  story['title'],
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                // Use a Container as a placeholder for the image
                Container(
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.grey, // Placeholder color
                  child: Center(
                    child: Text(
                      'Image will be displayed over here',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Once upon a time...',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 8.0),
                Text(
                  story['content'],
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Add any action or navigation as needed
                    // Example: Navigator.pushNamed(context, '/story-details');
                  },
                  child: Text('Read Full Story'),
                ),
                SizedBox(height: 16.0),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

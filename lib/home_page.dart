import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.indigo,
              child: Center(
                child: Text(
                  'Image/Video will be displayed here',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                onPrimary: Colors.white,
              ),
              child: Text('Join the community'),
              onPressed: () {
                // Navigate to sign up or login page
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFeatureBox(
                  context,
                  Icons.video_library,
                  'Watch inspiring videos',
                  color: Colors.orange,
                ),
                buildFeatureBox(
                  context,
                  Icons.book,
                  'Read real stories',
                  color: Colors.purple,
                ),
                buildFeatureBox(
                  context,
                  Icons.gamepad,
                  'Play fun games',
                  color: Colors.green,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFeatureBox(
                  context,
                  Icons.quiz,
                  'Take the quiz',
                  color: Colors.red,
                ),
                buildFeatureBox(
                  context,
                  Icons.lightbulb,
                  'Get useful tips',
                  color: Colors.blue,
                ),
                buildFeatureBox(
                  context,
                  Icons.star,
                  'Accept the challenge',
                  color: Colors.amber,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              child: Card(
                elevation: 4,
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You are not alone',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Join the community of thousands of young people who are making positive choices and living healthy lives.',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildStatistic('10K+', 'Users'),
                          buildStatistic('50K+', 'Posts'),
                          buildStatistic('100K+', 'Badges'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFeatureBox(
      BuildContext context,
      IconData icon,
      String label, {
        required Color color, // Make 'color' a required parameter
      }) {
    return InkWell(
      onTap: () {
        // Add the functionality you want for each feature box
      },
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatistic(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}

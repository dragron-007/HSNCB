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
              color: Colors.grey,
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
                primary: Colors.blue, // Use your desired button color
                onPrimary: Colors.white, // Use your desired text color
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
                ),
                buildFeatureBox(
                  context,
                  Icons.book,
                  'Read real stories',
                ),
                buildFeatureBox(
                  context,
                  Icons.gamepad,
                  'Play fun games',
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
                ),
                buildFeatureBox(
                  context,
                  Icons.lightbulb,
                  'Get useful tips',
                ),
                buildFeatureBox(
                  context,
                  Icons.star,
                  'Accept the challenge',
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              child: Card(
                elevation: 4, // Add elevation for a card-like effect
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
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Join the community of thousands of young people who are making positive choices and living healthy lives.',
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

  Widget buildFeatureBox(BuildContext context, IconData icon, String label) {
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
              color: Colors.blue, // Use your desired box color
              borderRadius: BorderRadius.circular(8), // Add rounded corners
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.white, // Use your desired icon color
                size: 32,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(label),
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
          ),
        ),
        Text(label),
      ],
    );
  }
}

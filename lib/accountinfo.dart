import 'package:flutter/material.dart';

class AccountInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Devesh Kaushal'),
              subtitle: Text('Devesh@example.com'),
              leading: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text('Change Password'),
              leading: Icon(Icons.lock),
              onTap: () {
                Navigator.pushNamed(context, '/change_password');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                // Add logout logic here
              },
            ),
            Divider(),
            ListTile(
              title: Text('Content Preferences'),
              leading: Icon(Icons.content_paste),
              onTap: () {
                Navigator.pushNamed(context, '/content_preferences');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      // Add your change password UI here
    );
  }
}

class ContentPreferencesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Preferences'),
      ),
      // Add your content preferences UI here
    );
  }
}

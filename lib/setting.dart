import 'package:flutter/material.dart';
import 'package:haryana/accountinfo.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String userName = 'Devesh Kaushal';
  String userEmail = 'Devesh@example.com';
  String selectedLanguage = 'English';
  List<String> supportedLanguages = ['English', 'Hindi'];
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.deepOrange, // Improved Deep Orange color
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 2.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                'Account Information',
                style: TextStyle(color: Colors.deepOrange),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: $userName'),
                  Text('Email: $userEmail'),
                ],
              ),
              leading: Icon(Icons.account_circle, color: Colors.deepOrange),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountInfoScreen()),
                );
              },
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 2.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                'Language',
                style: TextStyle(color: Colors.deepOrange),
              ),
              subtitle: DropdownButton(
                value: selectedLanguage,
                items: supportedLanguages.map((lang) {
                  return DropdownMenuItem(
                    value: lang,
                    child: Text(lang),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedLanguage = value.toString();
                    // You can add logic here to change the app's language
                  });
                },
              ),
              leading: Icon(Icons.language, color: Colors.deepOrange),
            ),
          ),
          Divider(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange, width: 2.0),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                'Dark Mode',
                style: TextStyle(color: Colors.deepOrange),
              ),
              trailing: Switch(
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                    // You can add logic here to toggle dark mode
                  });
                },
              ),
              leading: Icon(Icons.brightness_4, color: Colors.deepOrange),
            ),
          ),
          // ... (other list tiles remain the same)
        ],
      ),
    );
  }
}

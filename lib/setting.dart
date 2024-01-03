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
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Account Information'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: $userName'),
                Text('Email: $userEmail'),
              ],
            ),
            leading: Icon(Icons.account_circle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountInfoScreen()),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Language'),
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
            leading: Icon(Icons.language),
          ),
          Divider(),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                  // You can add logic here to toggle dark mode
                });
              },
            ),
            leading: Icon(Icons.brightness_4),
          ),
          // ... (other list tiles remain the same)
        ],
      ),
    );
  }
}

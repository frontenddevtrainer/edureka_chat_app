import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final settingsItems = [
    {"name": "Account", "icon": Icons.verified_user, "subtitle": ""},
    {"name": "Avatar", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "Privacy", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "Chats", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "Notifications", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "Storage and data", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "App langauge", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "Help", "icon": Icons.key_sharp, "subtitle": ""},
    {"name": "Invite a friend", "icon": Icons.key_sharp, "subtitle": ""}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: ListView(children: [
        const ListTile(
          leading:
              CircleAvatar(backgroundImage: AssetImage('images/profile.png')),
          title: Text("Person name"),
          subtitle: Text("about person"),
          trailing: Icon(Icons.qr_code),
        ),
        ...settingsItems.map(
          (item) => ListTile(
            leading: Icon(item["icon"] as IconData),
            title: Text(item["name"] as String),
            subtitle: const Text("security notifications,change number"),
          ),
        ),
        Container(
          child: const Text("meta"),
        )
      ]),
    );
  }
}

import "package:flutter/material.dart";

import './calls/calls.dart';
import './settings/settings.dart';
import './status/status.dart';
import './chat/chat.dart';
import './messages/messages.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Edureka Chat",
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/settings": (context) => const SettingScreen(),
        "/chat": (context) => const Messages(),
      },
      theme: ThemeData(
          primaryColor: Colors.amberAccent,
          appBarTheme: const AppBarTheme(color: Colors.orange)),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              actions: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.search),
                ),
                PopupMenuButton(
                    icon: const Icon(Icons.more_vert_outlined),
                    onSelected: (value) {
                      switch (value) {
                        case 5:
                          Navigator.pushNamed(context, "/settings");
                          break;
                        default:
                      }
                    },
                    itemBuilder: ((context) {
                      return const [
                        PopupMenuItem(
                          value: 0,
                          child: Text("New group"),
                        ),
                        PopupMenuItem(value: 1, child: Text("New broadcast")),
                        PopupMenuItem(value: 2, child: Text("Linked devices")),
                        PopupMenuItem(
                            value: 3, child: Text("Starred messages")),
                        PopupMenuItem(value: 4, child: Text("Payments")),
                        PopupMenuItem(value: 5, child: Text("Settings")),
                      ];
                    }))
              ],
              title: const Text(
                "Edureka Chat",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              bottom: const TabBar(tabs: [
                Tab(
                  text: "Chat",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ]),
            ),
            floatingActionButton:
                const FloatingActionButton(onPressed: null, child: Text("+")),
            body: const TabBarView(children: [
              ChatWidget(),
              Status(),
              Calls(),
            ])));
  }
}

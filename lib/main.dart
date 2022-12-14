import 'package:edureka_chat_app/calls/calls.dart';
import 'package:edureka_chat_app/status/status.dart';

import './chat/chat.dart';
import "package:flutter/material.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Edureka Chat",
      home: const ChatHome(),
      theme: ThemeData(
          primaryColor: Colors.amberAccent,
          appBarTheme: const AppBarTheme(color: Colors.orange)),
    );
  }
}

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Edureka Chat"),
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

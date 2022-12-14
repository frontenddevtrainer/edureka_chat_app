import "package:flutter/material.dart";

import './calls/calls.dart';
import './settings/settings.dart';
import './status/status.dart';
import './chat/chat.dart';

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
        "/settings": (context) => const Settings(),
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

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
    return Scaffold(
      appBar: AppBar(title: const Text("Edureka Chat")),
      body: const Text("sfsf"),
    );
  }
}

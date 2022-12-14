import './message_bubble.dart';
import './mock_messages.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Friend Name")),
      body: ListView.builder(
          itemCount: MockMessages.length,
          itemBuilder: ((context, index) {
            return MessageBubble(
              text: MockMessages[index]["message"] as String,
              isMine: MockMessages[index]["isMine"] as bool,
            );
          })),
    );
  }
}

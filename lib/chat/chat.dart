import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Column(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://picsum.photos/id/237/200/300"),
                ),
                title: Text("Praveen"),
                subtitle: Text("This is the last message"),
              )
            ],
          );
        }));
  }
}

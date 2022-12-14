import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              const Divider(
                color: Colors.black45,
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/chat");
                },
                leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://picsum.photos/id/237/200/300"),
                ),
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Praveen",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "now",
                        style: TextStyle(color: Colors.grey),
                      )
                    ]),
                subtitle: const Text(
                  "This is the last message",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          );
        }));
  }
}

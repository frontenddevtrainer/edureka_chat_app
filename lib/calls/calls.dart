import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.insert_link_rounded),
            ),
            title: Text("Create call link"),
            subtitle: Text("Share the link for your whatsapp call"),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Recent"),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 10,
              itemBuilder: (((context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png')),
                  title: const Text("Person name"),
                  subtitle: Row(children: const [
                    Icon(
                      Icons.missed_video_call,
                      color: Colors.green,
                      size: 18,
                    ),
                    Text("Today, 10:51am")
                  ]),
                  trailing: const Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                );
              })),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: const Color.fromARGB(255, 62, 171, 66),
        child: const Icon(
          Icons.add_ic_call_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

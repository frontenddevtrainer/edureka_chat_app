import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading:
                CircleAvatar(backgroundImage: AssetImage('images/profile.png')),
            title: Text("My status"),
            subtitle: Text("Tap to add status update"),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Recent updates"),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 10,
              itemBuilder: (((context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png')),
                  title: Text("Person name"),
                  subtitle: Text("Today, 10:51am"),
                );
              })),
            ),
          )
        ],
      ),
      floatingActionButton: Wrap(
        direction: Axis.vertical,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 53, 62, 53),
              child: const Icon(Icons.edit),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: const Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
    );
  }
}

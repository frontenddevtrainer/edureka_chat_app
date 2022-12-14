import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMine;

  const MessageBubble({super.key, this.text = "", this.isMine = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
            mainAxisAlignment:
                isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: isMine ? Colors.amber : Colors.blue,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Column(
                    crossAxisAlignment: isMine
                        ? CrossAxisAlignment.end
                        : CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: isMine ? TextAlign.end : TextAlign.start,
                      ),
                      Text(
                        "time",
                        textAlign: isMine ? TextAlign.end : TextAlign.start,
                      )
                    ]),
              )
            ])
      ],
    );
  }
}

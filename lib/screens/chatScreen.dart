import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/screens/chatinfo.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatInfoSender.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: index % 2 == 0
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(child: Text(chatInfoSender[index])),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 30,
                  width: 440,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.attach_file),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.currency_rupee),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.camera)
                          ],
                        ),
                        prefixIcon: const Icon(
                          Icons.emoji_emotions,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  )),
              //const Icon(Icons.mic),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green, // Background color
                ),
                padding: const EdgeInsets.all(8), // Adjust padding as needed
                child: const Icon(
                  Icons.mic,
                  color: Colors.white, // Icon color
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

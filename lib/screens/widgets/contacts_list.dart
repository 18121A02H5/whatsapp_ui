import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ListTile(
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(fontSize: 15),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
                leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(info[index]['profilePic'].toString())),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 13),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

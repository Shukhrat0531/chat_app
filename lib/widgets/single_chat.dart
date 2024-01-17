import 'dart:math';

import 'package:chat_flutter/screens/chat_details_screen.dart';
import 'package:flutter/material.dart';

class Chat {
  String name;
  String surname;
  DateTime lastConversationTime;
  String lastMessage;

  Chat({
    required this.name,
    required this.surname,
    required this.lastConversationTime,
    required this.lastMessage,
  });
}

// ignore: must_be_immutable
class SingleChat extends StatelessWidget {
  SingleChat({Key? key}) : super(key: key);

  List<Chat> temporaryChatList = [
    Chat(
      name: 'Иван',
      surname: 'Иванов',
      lastConversationTime: DateTime.now().subtract(const Duration(days: 2)),
      lastMessage: 'Привет, как дела?',
    ),
    Chat(
      name: 'Елена',
      surname: 'Петрова',
      lastConversationTime: DateTime.now().subtract(const Duration(days: 2)),
      lastMessage: 'Давно не виделись!',
    ),
  ];

Color _generateRandomColor() {
    final Random random = Random();
    return Color.fromRGBO(
        random.nextInt(256), random.nextInt(256), random.nextInt(256), 1.0);
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: temporaryChatList.length,
      itemBuilder: (BuildContext context, int index) {
        String initials =
            '${temporaryChatList[index].name[0]}${temporaryChatList[index].surname[0]}';

        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatDetailScreen()));
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: _generateRandomColor(),
              radius: 25,
              child: Text(initials,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
            ),
            title: Text(
              '${temporaryChatList[index].name} ${temporaryChatList[index].surname}',
              style: const TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              temporaryChatList[index].lastMessage,
              style: const TextStyle(fontSize: 12),
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('Вчера'),
            ),
          ),
        );
      },
    );
  }
}

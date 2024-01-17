import 'package:chat_flutter/widgets/single_chat.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Text(
            'Чаты',
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        leadingWidth: 300,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEDF2F6),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 335,
              height: 42,
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF9DB7CB),
                    ),
                    hintText: 'Поиск',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9DB7CB),
                    )),
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(child: SingleChat())
          ],
        ),
      ),
    );
  }
}

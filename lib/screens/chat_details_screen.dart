import 'package:flutter/material.dart';

class ChatDetailScreen extends StatefulWidget {
  const ChatDetailScreen({super.key});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: Row(
            children: [
              InkWell(
                  onTap: () {}, child: Image.asset('assets/images/btn.png')),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                    ),
                    SizedBox(width: 8),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Иванов Тван",
                            style: TextStyle(color: Colors.black)),
                        Text('в сети',
                            style: TextStyle(
                                color: Color.fromARGB(255, 108, 108, 108))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        elevation: 0.5,
        leadingWidth: 200,
      ),
      body: Container(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: Row(
          children: [
            Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: const Color(0xFFEDF2F6),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset('assets/images/Attach.png')),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEDF2F6),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 245,
              height: 42,
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '   Поиск',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF9DB7CB),
                    )),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                    color: const Color(0xFFEDF2F6),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset('assets/images/Audio.png')),
          ],
        ),
      ),
    );
  }
}

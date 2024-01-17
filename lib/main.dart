import 'package:chat_flutter/screens/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white,
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}
import 'package:chat_flutter/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyCFVEqBI50te4i2pjoora7kc-IMZfxWJVg',
          appId: '1:892427771067:android:2b07c768b0814ae5c55d9e',
          messagingSenderId: '892427771067',
          projectId:'chat-app-20956')
          );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const ChatScreen(),
    );
  }
}

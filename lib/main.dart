import 'package:chat_and_session/firebase_options.dart';
import 'package:chat_and_session/src/chat_and_session/presentation//pages/chat_page_two/screen/chat_page_two.dart';
import 'package:chat_and_session/src/chat_and_session/presentation/pages/create_session/screen/create_session.dart';
import 'package:chat_and_session/src/chat_and_session/presentation/pages/session/screen/session.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '/src/chat_and_session/presentation/pages/chat_list/screen/chat_list_screen.dart';
import '/src/chat_and_session/presentation/pages/chat_page/screen/chat_page_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      home: ChatList(),
    );
  }
}

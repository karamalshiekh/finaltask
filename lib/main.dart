import 'package:chat_and_session/features/pages/chat_page_two/screen/chat_page_two.dart';
import 'package:chat_and_session/features/pages/create_session/screen/create_session.dart';
import 'package:chat_and_session/features/pages/session/screen/session.dart';
import 'package:flutter/material.dart';

import 'features/pages/chat_list/screen/chat_list_screen.dart';
import 'features/pages/chat_page/screen/chat_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      home: Session(),
    );
  }
}

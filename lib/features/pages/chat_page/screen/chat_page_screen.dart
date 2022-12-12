import 'package:chat_and_session/features/widgets/appbar_chatpage_and_session.dart';
import 'package:chat_and_session/features/widgets/buttom_bar.dart';
import 'package:chat_and_session/features/pages/chat_page/component/text_chat.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDF0FF),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarChatPage(
            title: "Dori Doreau",

            clr: Colors.white,
          )),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(child: TextChat(img: 'assets/images/image 13.png',))),
          const ButtomBar(),
        ],
      ),
    );
  }
}

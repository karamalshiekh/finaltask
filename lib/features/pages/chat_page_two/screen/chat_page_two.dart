import 'package:flutter/material.dart';
import '../../../widgets/appbar_chatpage_and_session.dart';
import '../../../widgets/buttom_bar.dart';
import '../../chat_page/component/text_chat.dart';

class ChatPageTwo extends StatefulWidget {
  const ChatPageTwo({Key? key}) : super(key: key);

  @override
  State<ChatPageTwo> createState() => _ChatPageTwoState();
}

class _ChatPageTwoState extends State<ChatPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDF0FF),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarChatPage(
            title: "Dori Doreau",
            clr: Colors.white,
          )),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(child: TextChat(img: 'assets/images/session name.png',))),
          const ButtomBar(),
        ],
      ),
    );
  }
}

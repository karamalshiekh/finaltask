import 'package:flutter/material.dart';

import '../../../widgets/appbar_chatlist.dart';
import '../../../widgets/buttombar_session.dart';

class Session extends StatefulWidget {
  const Session({Key? key}) : super(key: key);

  @override
  State<Session> createState() => _SessionState();
}

class _SessionState extends State<Session> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarChatList(
            title: "Session",
            clr: Colors.white,
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 37),
            child: Image(image: AssetImage("assets/images/profile.png"),width:double.infinity,height: 600,fit: BoxFit.contain,),
          ),
          ButtomBarSession(clrTxt: Colors.white,wid:0.641 ,high: 0.0592,clr: Color(0xff3879E9),text: "APPLY",rad: 15,),
        ],
      ),

    );
  }
}

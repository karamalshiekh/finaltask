import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/data/data.dart';
import '../../../../application/application.dart';
import '../../../widgets/appbar_chatlist.dart';
import '../components/search_field.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class ChatList extends StatefulWidget {
  ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}
class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = new Storage();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarChatList(
            title: "chats",
            clr: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchField(),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 12, bottom: 10),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "You have 6 unreaded chat",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff757780),
                        fontWeight: FontWeight.w300),
                  )),
            ),
            Container(
              color: Color(0xffEDF0FF),
              height: 4,
            ),
            StreamBuilder<QuerySnapshot>(
                stream: firestore
                    .collection('contain')
                    .orderBy('time')
                    .snapshots(),
                builder: (context, snapshot) {
                  List<Column> messageswidgets = [];
                  if (!snapshot.hasData) {
                    //no data
                    print("object");
                  }
                  final messages = snapshot.data!.docs;
                  for (var message in messages) {
                    final name = message.get('name');
                    final messagewidget = Column(
                      children: [
                        Container(
                          color: Colors.white,
                          height: size.height * 0.112,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                        image:
                                            AssetImage(dataList[1]["image"])),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 17.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            name,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Recoleta",
                                                color: Color(0xff001F29)),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Text(
                                              "hi",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Recoleta",
                                                  color: Color(0xff757780)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0),
                                      child: Text(
                                        dataList[1]["time"],
                                        style: TextStyle(
                                            color: Color(
                                              0xffEE9CDA,
                                            ),
                                            fontSize: 16,
                                            fontFamily: "Recoleta",
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Color(0xffEDF0FF),
                          height: 4,
                        ),
                      ],
                    );

                    messageswidgets.add(messagewidget);
                  }
                  print(messageswidgets);
                  return Column(children: messageswidgets);
                }),
          ],
        ),
      ),
    );
  }
}

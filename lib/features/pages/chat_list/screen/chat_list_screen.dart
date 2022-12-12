import 'package:chat_and_session/features/widgets/appbar_chatlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/data/data.dart';
import '../components/search_field.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
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
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                bool test = true;
                if (dataList[index]["number"] == null) {
                  test = false;
                }
                return Container(
                  color: Colors.white,
                  height: size.height * 0.112,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage(dataList[index]["image"])),
                            Padding(
                              padding: const EdgeInsets.only(left: 17.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(dataList[index]["name"],style: TextStyle(fontSize:16,fontWeight:FontWeight.w500,fontFamily: "Recoleta",color: Color(0xff001F29)),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(dataList[index]["massage"],style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,fontFamily: "Recoleta",color: Color(0xff757780)),),
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
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text(dataList[index]["time"],style: TextStyle(color: Color(0xffEE9CDA,),fontSize: 16,fontFamily: "Recoleta",fontWeight: FontWeight.w400),),
                            ),
                            test
                                ? Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.blue,
                                    ),
                                    alignment: Alignment.center,
                                    width: 24,
                                    height: 24,
                                    child: Text(dataList[index]["number"],style: TextStyle(color: Colors.white,fontFamily: "Recoleta"),))
                                : Container(),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: dataList.length,
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  color: Color(0xffEDF0FF),
                  height: 4,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

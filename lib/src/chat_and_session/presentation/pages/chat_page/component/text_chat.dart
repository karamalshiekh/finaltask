import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../application/application.dart';
class TextChat extends StatelessWidget {
  String img;

  TextChat({required this.img});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('myMessage').orderBy('time').snapshots(),
        builder: (context, snapshot) {
          List<Padding> messageswidgets = [];
          if (!snapshot.hasData) {
            //no data
            print("object");
          }
          final messages = snapshot.data!.docs;
          for (var message in messages) {
            final messagetext = message.get('message');
            final itMe = message.get('sender');
            final messagewidget = itMe == "me"
                ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(27, 13, 27, 2),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.3, color: const Color(0xffE1E2EC)),
                      color: const Color(0xffFAFDFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: size.width * 0.712,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child:  Text(
                            messagetext,
                            style: TextStyle(
                                fontFamily: "Recoleta",
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomRight,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 6.0),
                            child: Text(
                              "22:19",
                              style: TextStyle(
                                  fontFamily: "Recoleta",
                                  color: Color(
                                    0xffEE9CDA,
                                  ),
                                  fontSize: 8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Image(
                      image: AssetImage("assets/images/image7.png")),
                ],
              ),
            )
                : Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
          children: [
          Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Image(
          image:
          AssetImage("assets/images/image6.png")),
          Container(
          padding:
          const EdgeInsets.fromLTRB(27, 13, 27, 2),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
          border: Border.all(
          width: 1.3,
          color: const Color(0xffE1E2EC)),
          color: const Color(0xffFAFDFF),
          borderRadius: BorderRadius.circular(30),
          ),
          width: size.width * 0.712,
          child: Column(
          children: [
          Container(
          alignment: Alignment.centerLeft,
          child: Text(
          "$messagetext",
          style: TextStyle(
          fontFamily: "Recoleta",
          fontSize: 16,
          fontWeight: FontWeight.w400),
          ),
          ),
          Container(
          alignment: Alignment.bottomRight,
          child: const Padding(
          padding: EdgeInsets.only(top: 6.0),
          child: Text(
          "22:10",
          style: TextStyle(
          fontFamily: "Recoleta",
          color: Color(
          0xffEE9CDA,
          ),
          fontSize: 8),
          ),
          ),
          ),
          ],
          ),
          ),
          ],
          ),
          ),
          ],
          ),
          );
            messageswidgets.add(messagewidget);
          }
          print(messageswidgets);
          return Column(children: messageswidgets);
        });
  }
}

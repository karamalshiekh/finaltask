import 'package:flutter/material.dart';

class ButtomBar extends StatelessWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
       color: Colors.white,
       height: 55,
       child:
      Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 23.0,right: 18),
          child: Image(image: AssetImage("assets/icons/voice.png")),
        ),
        Expanded(
          child: TextField(
            decoration:InputDecoration(
              border: InputBorder.none,
              hintText: 'Message',hintStyle: TextStyle(color: Color(0xffEE9CDA),fontSize: 16,fontFamily: "Recoleta"),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 17.0),
          child: Image(image: AssetImage("assets/icons/camera.png")),
        ),
        Padding(
          padding: EdgeInsets.only(right: 17.0),
          child: Image(image: AssetImage("assets/icons/vedio.png")),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Image(image: AssetImage("assets/icons/send.png")),
        ),
      ],
    ),
    );
  }
}

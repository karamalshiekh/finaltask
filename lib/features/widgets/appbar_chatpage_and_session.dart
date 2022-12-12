import 'package:flutter/material.dart';

class AppBarChatPage extends StatelessWidget {
  String title;
  Color clr;
   AppBarChatPage({required this.title,required this.clr});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: clr,
      elevation: 0,
      leadingWidth: 70,
      toolbarHeight: 72,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10,bottom: 10),
        child: Container(
          width: size.width * 0.1842,
          height: size.height * 0.0892,
          decoration: BoxDecoration(
            color: Color(0xffF7F9FB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 25),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0,right: 22),
              child: Image(image: AssetImage("assets/images/image6.png",),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  alignment: Alignment.bottomCenter,
                  width: size.width * 0.3564,
                  height: size.height * 0.0579,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Recoleta",
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text("online",style: TextStyle(color: Color(0xffEE9CDA),fontSize: 14,fontFamily: "Recoleta",fontWeight: FontWeight.w400),)

                    ],
                  )),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24,bottom: 0),
          child: Image(
            image: AssetImage("assets/icons/calendar.png"),
            color: Color(0xff3879E9),
            width: 36,
            height: 36,
          ),
        ),
      ],


    );
  }
}

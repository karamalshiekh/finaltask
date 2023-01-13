import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

class AppBarChatList extends StatelessWidget {
  String title;
  Color clr;

  AppBarChatList({required this.title, required this.clr});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: clr,
      elevation: 0,
      leadingWidth: 70,
      toolbarHeight: 70,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20),
        child: Container(
          width: size.width * 0.1842,
          height: size.height * 0.0892,
          decoration: BoxDecoration(
            color: const Color(0xffF7F9FB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 25),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Container(
            alignment: Alignment.bottomCenter,
            width: size.width * 0.4,
            height: size.height * 0.0679,
            child: Text(
              title,
              style: const TextStyle(fontFamily: "Recoleta",
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            )),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0, right: 14),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Image(
                  image: AssetImage("assets/icons/slider.png"),
                  color: Color(0xff757780),
                  width: 30,
                  height: 25,
                ),
              ),
              SvgPicture.asset("assets/icons/settings.svg"),
            ],
          ),
        ),
      ],
    );
  }
}

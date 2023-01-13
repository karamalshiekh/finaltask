import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

class AppBarCreateSession extends StatelessWidget {
  String title;
  Color clr;

  AppBarCreateSession({required this.title, required this.clr});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: clr,
      elevation: 0,
      leadingWidth: 70,
      toolbarHeight: 70,
      leading: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text("00:00am",style: TextStyle(fontFamily: "Recoleta",color: Colors.black,fontSize: 10),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 0),
            child: Container(
              width: size.width * 0.1842,
              height: size.height * 0.0552,
              decoration: BoxDecoration(
                color: const Color(0xffF7F9FB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 25),
            ),
          ),
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Container(
            alignment: Alignment.bottomCenter,
            width: size.width * 0.323,
            height: size.height * 0.0679,
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: "Recoleta",
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            )),
      ),

    );
  }
}

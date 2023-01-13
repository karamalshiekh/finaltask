import 'package:flutter/material.dart';

class ButtomBarSession extends StatelessWidget {
  double wid,high,rad;
  Color clr,clrTxt;
  String text;
   ButtomBarSession({required this.wid,required this.high, required this.clr, required this.text,required this.clrTxt,required this.rad});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width:size.width*wid ,
          height: size.height*high,
          decoration: BoxDecoration(
            color: clr,
            borderRadius: BorderRadius.circular(rad),
          ),
          child: Text(text,style: TextStyle(color: clrTxt,fontFamily: "Recoleta",),),
          ),
        Padding(
          padding: const EdgeInsets.only(top:8),
          child: Container(
            width: double.infinity,
            height: size.height*0.0656,
            decoration: const BoxDecoration(
              color: Color(0xffEDF0FF),

            ),
          ),
        ),
      ],
    );
  }
}

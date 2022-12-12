import 'package:flutter/material.dart';

class TextFieldModel extends StatelessWidget {
  // hintStyle: TextStyle(fontSize: 16,color: Color(0xff757780),fontWeight: FontWeight.w300)
  String textfield_name,hinttext;
  double wid,high,radius;
  Color clr;
   TextFieldModel({required this.wid,required this.high,required this.radius,required this.clr,required this.textfield_name,required this.hinttext});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 8),
              alignment: Alignment.center,
              child: Text(textfield_name,style: TextStyle(fontSize: 20,fontFamily: "Recoleta",),),),
        ),
        Container(
          width: size.width*wid,
          height: size.height*high,
    decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: clr,
          ),
          child: Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: TextStyle(fontFamily: "Recoleta"),
                border: InputBorder.none,
              ),

            ),
          ),
        ),
      ],
    );
  }
}

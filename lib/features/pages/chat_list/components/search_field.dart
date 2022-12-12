import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        height: size.height*0.0493,
        decoration: BoxDecoration(
          color: Color(0xffE1E2EC),
          borderRadius: BorderRadius.circular(15),

        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 22.0,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("search",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: "Recoleta"),),
            Icon(Icons.search)
          ],),
        ),

      ),
    );
  }
}

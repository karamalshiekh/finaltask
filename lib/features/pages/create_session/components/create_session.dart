import 'package:chat_and_session/features/pages/create_session/components/textfield_model.dart';
import 'package:flutter/material.dart';

import '../../../widgets/buttombar_session.dart';

class SessionPersonalInformation extends StatelessWidget {
  const SessionPersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: TextFieldModel(wid: 0.5948,high: 0.0473,radius: 15,clr: const Color(0xffE1E2EC),textfield_name: "session name :",hinttext: ""),
        ),
        Row(

          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.center,

                  child: const Text("date:",style: TextStyle(fontFamily: "Recoleta",fontSize: 21),)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                width: size.width*0.619,
                height: size.height*0.0473,
                child: Padding(
                  padding: const EdgeInsets.only(right: 7.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width*0.3165,
                        decoration: BoxDecoration(
                          color: const Color(0xffE1E2EC),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " DD/MM/YYYY",
                            hintStyle: TextStyle(fontSize: 16,color: Color(0xff757780),fontFamily: "Recoleta",fontWeight: FontWeight.w300)
                          ),
                        ),
                      ),
                      Container(
                        width: size.width*0.215,
                        decoration: BoxDecoration(
                          color: const Color(0xffE1E2EC),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "    00:00am",hintStyle: TextStyle(fontSize: 14,fontFamily: "Recoleta",fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child:
                  const Text("session type:",style: TextStyle(fontSize: 21,fontFamily: "Recoleta"),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                width: size.width*0.619,
                height: size.height*0.0473,
                child: Row(
                  children: [
                    Container(
                      width: size.width*0.31,
                        decoration: BoxDecoration(
                          color: const Color(0xffE1E2EC),
                          borderRadius: BorderRadius.circular(15)
                        ),

                          child: TextButton(onPressed: (){}, child: const Text("Indevidual",style: TextStyle(color: Colors.black,fontFamily: "Recoleta",),),)),
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Container(
                        width: size.width*0.26,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 0.3,color: Colors.black26),
                              borderRadius: BorderRadius.circular(15)
                          ),

                          child: TextButton(onPressed: (){}, child: const Text("Group",style: TextStyle(color: Colors.black,fontFamily: "Recoleta",),),)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 2),
          child: Row(
            children: [
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "service type:",
                      style: TextStyle(fontSize: 21,fontFamily: "Recoleta",),
                    )),
              ),
              SizedBox(
                width:size.width*0.619,
                height: size.height*0.0473,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.width*0.18,
                      decoration: BoxDecoration(
                        color: const Color(0xffE1E2EC),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(onPressed: (){},child: const Text("Home",style: TextStyle(color: Colors.black,fontFamily: "Recoleta",),),),
                    ),
                    Container(
                      width: size.width*0.18,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.3,color: Colors.black26),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(onPressed: (){},child: const Text("Center",style: TextStyle(color: Colors.black,fontFamily: "Recoleta",),),),
                    ),
                    Container(
                      width: size.width*0.18,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.3,color: Colors.black26),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextButton(onPressed: (){},child: const Text("Online",style: TextStyle(color: Colors.black,fontFamily: "Recoleta",),),),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,top: 10),
          child: TextFieldModel(wid: 0.5948,high: 0.06,radius: 15,clr: const Color(0xffE1E2EC),textfield_name: "Location :",hinttext: ""),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,top: 10),
          child: TextFieldModel(wid: 0.5948,high: 0.046,radius: 15,clr: const Color(0xffE1E2EC),textfield_name: "Duration :",hinttext: "00:00 h:m"),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,top: 10),
          child: TextFieldModel(wid: 0.5948,high: 0.06,radius: 15,clr: const Color(0xffE1E2EC),textfield_name: "requirements :",hinttext: ""),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,top: 10),
          child: TextFieldModel(wid: 0.5948,high: 0.06,radius: 15,clr: const Color(0xffE1E2EC),textfield_name: "doctor referral :",hinttext: ""),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,top: 10),
          child: TextFieldModel(wid: 0.5948,high: 0.046,radius: 15,clr: const Color(0xffE1E2EC),textfield_name: "session fee :",hinttext: "0000 @"),
        ),
         Padding(
           padding: const EdgeInsets.only(left: 5.0,top: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               const Text("Attachments :",style: TextStyle(fontSize: 21,fontFamily: "Recoleta",),),
               Container(
                 width: size.width*0.35,
                 height: size.height*0.046,
                 decoration: BoxDecoration(
                   color: const Color(0xffE1E2EC),
                   borderRadius:BorderRadius.circular(15),
                 ),
                 child: const TextField(
                   decoration: InputDecoration(
                     hintText: "Certificate",
                     hintStyle: TextStyle(fontSize: 16,color: Color(0xff757780),fontWeight: FontWeight.w300,fontFamily: "Recoleta",),
                     border: InputBorder.none,
                   ),
                 ),
               ),
               const Image(image: AssetImage("assets/icons/show.png"),width: 40,height: 40,),
               const Image(image: AssetImage("assets/icons/delete.png"),width: 40,height: 40,),

             ],
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width*0.35,
                  height: size.height*0.046,
                  decoration: BoxDecoration(
                    color: const Color(0xffE1E2EC),
                    borderRadius:BorderRadius.circular(15),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Attachment Name",
                      hintStyle: TextStyle(fontSize: 14,color: Color(0xff757780),fontWeight: FontWeight.w300,fontFamily: "Recoleta",),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left:23.0),
                  child: Image(image: AssetImage("assets/icons/upload.png"),width: 80,height: 52,),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ButtomBarSession(clrTxt: Colors.white,wid:0.641 ,high: 0.0592,clr: const Color(0xff3879E9),text: "Create a session",rad: 15,),
        ),
        
         

      ],
    );
  }
}

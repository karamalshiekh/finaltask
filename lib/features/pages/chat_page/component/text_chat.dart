import 'package:flutter/material.dart';

class TextChat extends StatelessWidget {
  String img;
   TextChat({required this.img});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(image: AssetImage("assets/images/image6.png")),
                Container(
                  padding: const EdgeInsets.fromLTRB(27, 13, 27, 2),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.3, color: const Color(0xffE1E2EC)),
                    color: const Color(0xffFAFDFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: size.width * 0.712,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "hello",
                          style: TextStyle(
                              fontFamily: "Recoleta",
                              fontSize: 16, fontWeight: FontWeight.w400),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(27, 13, 27, 2),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.3, color: const Color(0xffE1E2EC)),
                    color: const Color(0xffFAFDFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: size.width * 0.712,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Hi",
                          style: TextStyle(
                              fontFamily: "Recoleta",
                              fontSize: 16, fontWeight: FontWeight.w400),
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
                const Image(image: AssetImage("assets/images/image7.png")),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Image(image: AssetImage("assets/images/image6.png")),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 7, 27, 1),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.3, color: const Color(0xffE1E2EC)),
                    color: const Color(0xffFAFDFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: size.width * 0.712,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(
                                Icons.play_circle,
                                color: Colors.blue,
                                size: 40,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Image(
                              image: AssetImage("assets/icons/a1.jpg"),
                              width: 180,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 48.0),
                            child: Text(
                              "2:01",
                              style: TextStyle(
    fontFamily: "Recoleta",
                                  color: Color(
                                    0xffEE9CDA,
                                  ),
                                  fontSize: 8),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "22:30",
                            style: TextStyle(
    fontFamily: "Recoleta",
                                color: Color(
                                  0xffEE9CDA,
                                ),
                                fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Image(image: AssetImage("assets/images/image6.png")),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 7, 27, 1),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.3, color: const Color(0xffE1E2EC)),
                    color: const Color(0xffFAFDFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: size.width * 0.712,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(
                                Icons.play_circle,
                                color: Colors.blue,
                                size: 40,
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Image(
                              image: AssetImage("assets/icons/a1.jpg"),
                              width: 180,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 48.0),
                            child: Text(
                              "1:41",
                              style: TextStyle(
    fontFamily: "Recoleta",
                                  color: Color(
                                    0xffEE9CDA,
                                  ),
                                  fontSize: 8),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "22:30",
                            style: TextStyle(
    fontFamily: "Recoleta",
                                color: Color(
                                  0xffEE9CDA,
                                ),
                                fontSize: 8),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 7, 27, 1),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border:
                    Border.all(width: 1.3, color: const Color(0xffE1E2EC)),
                    color: const Color(0xffFAFDFF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: size.width * 0.712,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: const Icon(Icons.play_circle,color: Colors.blue,size: 40,)
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 12.0),
                            child: Image(image: AssetImage("assets/icons/a2.png"),width: 180,height: 40,),
                          ),

                        ],
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 48.0),
                            child: Text(
                              "2:01",
                              style: TextStyle(
    fontFamily: "Recoleta",
                                  color: Color(
                                    0xffEE9CDA,
                                  ),
                                  fontSize: 8),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "22:30",
                            style: TextStyle(
                            fontFamily: "Recoleta",
                                color: Color(
                                  0xffEE9CDA,
                                ),
                                fontSize: 8),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                const Image(image: AssetImage("assets/images/image7.png")),
              ],
            ),
          ),

          const Text(
            "Today",
            style: TextStyle(
              fontFamily: "Recoleta",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff757780)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1.3, color: const Color(0xffE1E2EC)),
                    color: const Color(0xffFAFDFF),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: size.width * 0.712,
                  height: size.height * 0.2,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(
                          5,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            img,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 25, bottom: 5),
                        alignment: Alignment.bottomRight,
                        child: const Padding(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Text(
                            "22:32",
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
                const Image(image: AssetImage("assets/images/image7.png")),
              ],
            ),
          ),
          const Text(
            "Seen in 09:33",
            style: TextStyle(
                fontFamily: "Recoleta",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff757780)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(image: AssetImage("assets/images/image6.png")),
             Padding(
               padding: const EdgeInsets.only(left:8,top: 25.0),
               child: Container(
                   alignment: Alignment.bottomLeft,
                   child: const Text("Typing...",style: TextStyle(fontSize: 16,fontFamily: "Recoleta"),)),
             )
            ],
          ),
        ],
      ),
    );
  }
}

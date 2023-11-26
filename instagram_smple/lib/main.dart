// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//post item function
  Container postItem(
          String avatar, String photo, String name, String location) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 0, left: 0, right: 0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 30,
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 60,
                  ),
                ],
              ),
            ),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Image.asset(photo)),
            // under post icons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border_outlined,
                          size: 28,
                          color: const Color.fromARGB(221, 219, 0, 0)),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.chat_bubble_outline_rounded,
                          color: const Color.fromARGB(221, 219, 0, 0)),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.flag_outlined,
                      color: const Color.fromARGB(221, 219, 0, 0)),
                ],
              ),
            ),
            // comment section
            CommentAdd("Member", "What a great Picture..<3"),
          ]),
        ),
      );

// Comment add function
  Padding CommentAdd(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(221, 219, 0, 0),
                    fontSize: 12,
                  ),
                ),
                TextSpan(text: "   "),
                TextSpan(
                  text: comment,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  //widgets - Story add function

  Widget storyWidget(String avatar, String name) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: const Color.fromARGB(221, 221, 0, 0),
                gradient: LinearGradient(colors: [
                  const Color.fromRGBO(214, 71, 108, 1),
                  Color.fromARGB(241, 166, 117, 214),
                  Color.fromARGB(255, 11, 44, 231)
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(avatar),
                radius: 34,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(221, 218, 0, 0)),
          ),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Column(
        children: [
          //top bar
          Container(
            width: double.infinity,
            height: 80,
            //appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //insta logo
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset("assets/images/insta.png", width: 120),
                ),

                //right icon side
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 0, top: 4, left: 6, bottom: 4),
                      child: Icon(Icons.add_circle,
                          color: Colors.black87, size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite,
                          color: const Color.fromARGB(221, 73, 0, 0), size: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.send,
                          color: Color.fromARGB(246, 83, 0, 0), size: 30),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //middle bar
          Expanded(
              child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      //you can add story here
                      children: [
                        storyWidget("assets/images/p1.jpeg", "futbolcu1"),
                        storyWidget("assets/images/p2.jpeg", "futbolcu2"),
                        storyWidget("assets/images/p3.jpeg", "futbolcu3"),
                        storyWidget("assets/images/p5.jpeg", "futbolcu4"),
                        storyWidget("assets/images/TFF.jpeg", "TFF"),
                        storyWidget("assets/images/p7.jpeg", "futbolcu"),
                        storyWidget("assets/images/p8.jpeg", "futbolcu"),
                        storyWidget("assets/images/p9.jpeg", "futbolcu"),
                      ],
                    ),
                  ),
                  //you can add new post here
                  postItem("assets/images/p1.jpeg", "assets/images/post1.jpeg",
                      "futbolcu1", "Stadium"),
                  postItem("assets/images/post2.jpeg",
                      "assets/images/post2.jpeg", "futbolcu2", "GOAL!! 3-2"),
                  postItem("assets/images/TFF.jpeg",
                      "assets/images/post3cup.jpeg", "TFF", "UCL CUP"),
                  postItem("assets/images/TFF.jpeg",
                      "assets/images/uefacup.jpeg", "TFF", "UEFA CUP"),
                ],
              ),
            ),
          )),
          //bottom bar
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color.fromARGB(50, 0, 0, 0)),
            ),
            //bottom menu logos
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, size: 35, color: Color.fromARGB(233, 0, 0, 0)),
                Icon(Icons.search_rounded,
                    size: 35, color: Color.fromARGB(233, 0, 0, 0)),
                Icon(Icons.smart_display,
                    size: 35, color: Color.fromARGB(233, 0, 0, 0)),
                Icon(Icons.favorite,
                    size: 35, color: Color.fromARGB(233, 0, 0, 0)),
                Icon(Icons.person,
                    size: 35, color: Color.fromARGB(233, 0, 0, 0)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

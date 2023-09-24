import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';

class ChatProfile extends StatefulWidget {
  @override
  _ChatProfileState createState() => _ChatProfileState();
}

class _ChatProfileState extends State<ChatProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFF512DA8),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Color(0xFFF1E6FF),
            size: 28,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ChatScreen();
                },
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.2,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 5.0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: Color(0xFFF1E6FF),
                    child: Ink.image(
                      image: AssetImage("assets/images/team.png"),
                      fit: BoxFit.cover,
                      width: 40.0,
                      height: 40.0,
                      // child: InkWell(
                      //   onTap: () {},
                      // ),
                    ),
                  ),
                  Text(
                    "Team",
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 28,
                      // color: Color(0xFF512DA8),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 6,
                color: Color(0xFF6F35A5),
                endIndent: 140,
                indent: 165,
                thickness: 3,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF).withOpacity(1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF512DA8).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Techie Tribe",
                      style: TextStyle(
                        fontFamily: 'RocknRollOne',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Color(0xFF512DA8),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Color(0xFF512DA8),
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: Color(0xFF512DA8),
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFF512DA8),
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.2,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 5.0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: Color(0xFFF1E6FF),
                    child: Ink.image(
                      image: AssetImage("assets/images/mentor.png"),
                      fit: BoxFit.cover,
                      width: 40.0,
                      height: 40.0,
                      // child: InkWell(
                      //   onTap: () {},
                      // ),
                    ),
                  ),
                  Text(
                    "Mentor",
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 28,
                      // color: Color(0xFF512DA8),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 6,
                color: Color(0xFF6F35A5),
                endIndent: 130,
                indent: 170,
                thickness: 3,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF).withOpacity(1),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFF512DA8).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Simon Sias",
                      style: TextStyle(
                        fontFamily: 'RocknRollOne',
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: Color(0xFF512DA8),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Color(0xFF512DA8),
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: Color(0xFF512DA8),
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFF512DA8),
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.09,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 5.0,
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    color: Color(0xFFF1E6FF),
                    child: Ink.image(
                      image: AssetImage("assets/images/student.png"),
                      fit: BoxFit.cover,
                      width: 40.0,
                      height: 40.0,
                      // child: InkWell(
                      //   onTap: () {},
                      // ),
                    ),
                  ),
                  Text(
                    "Group Members",
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 28,
                      // color: Color(0xFF512DA8),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 6,
                color: Color(0xFF6F35A5),
                endIndent: 70,
                indent: 135,
                thickness: 3,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 18),
                decoration: BoxDecoration(
                  color: Color(0xFFF1E6FF).withOpacity(1),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color(0xFF512DA8).withOpacity(0.2),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Monica Geller",
                          style: TextStyle(
                            fontFamily: 'RocknRollOne',
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Color(0xFF512DA8),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.videocam,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Color(0xFF512DA8).withOpacity(0.2),
                      height: 1,
                      width: double.infinity,
                    ),
                    Row(
                      children: [
                        Text(
                          "Chandler Bing",
                          style: TextStyle(
                            fontFamily: 'RocknRollOne',
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Color(0xFF512DA8),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.videocam,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Color(0xFF512DA8).withOpacity(0.2),
                      height: 1,
                      width: double.infinity,
                    ),
                    Row(
                      children: [
                        Text(
                          "Rachel Green",
                          style: TextStyle(
                            fontFamily: 'RocknRollOne',
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Color(0xFF512DA8),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.call,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.videocam,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFF512DA8),
                            size: 22,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

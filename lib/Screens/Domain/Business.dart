import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/constants.dart';

class BusinessPage extends StatefulWidget {
  @override
  _BusinessPageState createState() => _BusinessPageState();
}

Size? size;

class _BusinessPageState extends State<BusinessPage> {
  // Widget appBar(context) {
  //   size = MediaQuery.of(context).size;
  //   return Row(
  //     children: <Widget>[
  //       GestureDetector(
  //         onTap: () {
  //           Navigator.pop(context);
  //         },
  //         child: Padding(
  //           padding: EdgeInsets.only(left: 10),
  //           child: Container(
  //             padding: EdgeInsets.symmetric(vertical: 15),
  //             child: Icon(
  //               Icons.keyboard_arrow_left,
  //               size: 30,
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // centerTitle: true,
        title: Center(
          child: Image(
            image: AssetImage('assets/images/azume_horizontal_logo.png'),
            height: 40,
            // alignment: Alignment.centerRight,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: Icon(Icons.message_rounded),
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
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: size!.height * 0.80,
                    width: size!.width,
                    child: Padding(
                      padding: EdgeInsets.only(left: 7, bottom: 7, right: 7),
                      child: Card(
                        color: Colors.deepPurple[50],
                        elevation: 20,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Why Business ?",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF6F35A5),
                                  fontFamily: 'KaushanScript'),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14, right: 14),
                              child: Text(
                                "The secretary of yesteryear needed to know how to take shorthand, type and answer the phone. Today's secretary deals with dictation using a tape recorder and transcription equipment, instead of simply typing, she inputs data into a computer; and the office telephone she uses is actually a complex communications center. What we now call the business support services industry has experienced a similar and perhaps even more remarkable evolution. It began as secretarial services or typing services, and typing was pretty much all they did. But those operations have gone the way of the horse and buggy, replaced by modern, techno-savvy entrepreneurs who want to take advantage of a virtually limitless market.  With the advent of desktop computers and increasingly sophisticated office equipment, the skill and knowledge requirements of secretaries have also increased. At the same time, the general business landscape has changed dramatically. Big businesses are looking for ways to streamline their operations, and one popular option is outsourcing, where they retain another company to provide a service that may have traditionally been done by employees. ",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 15),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Color(0xFFEEEEEE),
                    height: 30,
                    thickness: 10,
                  ),
                  Text(
                    "Success Stories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 20),
                  ),
                  Divider(
                    height: 10,
                    color: Color(0xFF6F35A5),
                    endIndent: 105,
                    indent: 105,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SuccessStoriesBusiness(
                            "face_1.jpg",
                            'Simona Hayes',
                            "Business Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesBusiness(
                            "face_2.jpg",
                            'Simon Saiz',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesBusiness(
                            "face_3.jpg",
                            'Allie Grater',
                            "Business Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesBusiness(
                            "face_4.jpg",
                            'Mark Ateer',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesBusiness(
                            "face_5.jpg",
                            'Olivia Diaz',
                            "Business Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF512DA8),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(40)),
                      height: 70,
                      width: 210,
                      alignment: Alignment.center,
                      child: Text(
                        "Talk to mentor",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SuccessStoriesBusiness(
      String BusinessSuccessStoryimage,
      String Businessename,
      String Businessjobprofession,
      String BusinessStory) {
    return Padding(
      padding: EdgeInsets.only(left: 17),
      child: Container(
        height: size!.height * 0.5,
        width: size!.width * 0.67,
        child: Card(
          color: Colors.deepPurple[50],
          elevation: 15,
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  image: DecorationImage(
                    image:
                        AssetImage("assets/images/$BusinessSuccessStoryimage"),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(1.6, 1.6),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "$Businessename",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lobster'),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "$Businessjobprofession",
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: Colors.black45,
                endIndent: 30,
                indent: 30,
                thickness: 3,
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  '$BusinessStory',
                  style: TextStyle(fontSize: 17, color: Colors.black45),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

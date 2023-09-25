import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/constants.dart';

class SoftwarePage extends StatefulWidget {
  @override
  _SoftwarePageState createState() => _SoftwarePageState();
}

Size? size;

class _SoftwarePageState extends State<SoftwarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
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
                    image:
                        AssetImage('assets/images/azume_horizontal_logo.png'),
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
              Column(
                children: [
                  Container(
                    height: size!.height * 0.68,
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
                              "Why Software ?",
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
                                "There’s no better time to build a software startup than today. If you’re new to the software industry, you need to learn the basics of building a startup that specializes in developing and selling software to end-users. Let’s start. What does LinkedIn, WhatsApp, and Pinterest have in common? They are all prominent software companies that were once startups. Every year, thousands of hopefuls set their eyes on becoming the next success story in the highly competitive software industry. A software startup is a new company that develops, sells, and distributes different types of software products or services. Most software startups aim to dominate a high-growth market on limited resources. Since they’re new, they don’t have the operating history or background. Their lack of business history often poses some challenges in their operations. This may include funding and hiring top-level talents.",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 16),
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
                        SuccessStoriesSoftware(
                            "face_1.jpg",
                            'Simona Hayes',
                            "Software Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesSoftware(
                            "face_2.jpg",
                            'Simon Saiz',
                            "Software Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesSoftware(
                            "face_3.jpg",
                            'Allie Grater',
                            "Software Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesSoftware(
                            "face_4.jpg",
                            'Mark Ateer',
                            "Software Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesSoftware(
                            "face_5.jpg",
                            'Olivia Diaz',
                            "Software Executive",
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

  Widget SuccessStoriesSoftware(String SoftwareSuccessStoryimage,
      String Softwarename, String Softwarejobprofession, String SoftwareStory) {
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
                        AssetImage("assets/images/$SoftwareSuccessStoryimage"),
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
                "$Softwarename",
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
                "$Softwarejobprofession",
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
                  '$SoftwareStory',
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

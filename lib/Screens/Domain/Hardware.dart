import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/constants.dart';

class HardwarePage extends StatefulWidget {
  @override
  _HardwarePageState createState() => _HardwarePageState();
}

Size? size;

class _HardwarePageState extends State<HardwarePage> {
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
                    height: size!.height * 0.72,
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
                              "Why Hardware ?",
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
                                "The boom in demand of electronic devices has triggered growth of hardware startups around the world. According to a joint study brought out by Assocham and NEC Technologies in the year 2014, India’s total electronics hardware production estimates for 2014-15 stood at 32.46 billion which is about 1.5% of world electronic hardware production.  The domestic consumption of electronic hardware in 2014-15 was 63.6 billion and 58% of this demand was fulfilled with imports. This opens up a huge opportunity for hardware based technology startups. India has been traditionally very strong in the software and tech-enabled services startup area. However, hardware startups face a very different set of problems in comparison to these companies. These challenges are related to a longer innovation cycle, technology infrastructure requirement for manufacturing and fulfilment, competition from low cost devices from other countries, to name a few. This makes building a hardware company a much more involved process than software or Internet related models.  ",
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
                        SuccessStoriesHardware(
                            "face_1.jpg",
                            'Simona Hayes',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesHardware(
                            "face_2.jpg",
                            'Simon Saiz',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesHardware(
                            "face_3.jpg",
                            'Allie Grater',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesHardware(
                            "face_4.jpg",
                            'Mark Ateer',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesHardware(
                            "face_5.jpg",
                            'Olivia Diaz',
                            "Entrepreneur",
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

  Widget SuccessStoriesHardware(String HardwareSuccessStoryimage,
      String Hardwarename, String Hardwarejobprofession, String HardwareStory) {
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
                        AssetImage("assets/images/$HardwareSuccessStoryimage"),
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
                "$Hardwarename",
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
                "$Hardwarejobprofession",
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
                  '$HardwareStory',
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

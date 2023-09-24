// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MarketingPage extends StatefulWidget {
  @override
  _MarketingPageState createState() => _MarketingPageState();
}

Size? size;

class _MarketingPageState extends State<MarketingPage> {
  Widget appBar(context) {
    size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Icon(
                Icons.keyboard_arrow_left,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(context),
              Column(
                children: [
                  Container(
                    height: size!.height * 0.70,
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
                              "Why Marketing ?",
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
                                "Marketing agencies and startups come and go, but even the good ones don’t necessarily stick around. Instead, successful marketing startups are those which evolve with the ever-growing demands of marketing, whether they be in the digital or off-line categories, or in the rapidly growing area of content marketing. No business can grow without a proper marketing plan and startups are no different. A startup marketing strategy outlines a startup’s direction and approach to reach its goals. In practical terms, a sound marketing plan acts as a road-map to the success of the startups. A marketing plan consists of strategies for promoting startup products and services.  While there is no set template, generally, it includes a checklist that is often the starting point of the marketing process. A marketing plan helps startups identify potential customers, channels, and the ways that the marketing efforts can target them. In fact, the growth of the business is dependent on a solid startup marketing plan and requires timely planning.",
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
                        SuccessStoriesMarketing(
                            "face_1.jpg",
                            'Simona Hayes',
                            "Marketing Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesMarketing(
                            "face_2.jpg",
                            'Simon Saiz',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesMarketing(
                            "face_3.jpg",
                            'Allie Grater',
                            "Marketing Executive",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesMarketing(
                            "face_4.jpg",
                            'Mark Ateer',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesMarketing(
                            "face_5.jpg",
                            'Olivia Diaz',
                            "Marketing Executive",
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

  Widget SuccessStoriesMarketing(
      String MarketingSuccessStoryimage,
      String Marketingname,
      String Marketingjobprofession,
      String MarketingStory) {
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
                        AssetImage("assets/images/$MarketingSuccessStoryimage"),
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
                "$Marketingname",
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
                "$Marketingjobprofession",
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
                  '$MarketingStory',
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

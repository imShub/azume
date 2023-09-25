import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/constants.dart';

class ECommercePage extends StatefulWidget {
  @override
  _ECommercePageState createState() => _ECommercePageState();
}

Size? size;

class _ECommercePageState extends State<ECommercePage> {
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
                    height: size!.height * 0.74,
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
                              "Why E-Commerce ?",
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
                                "E-Commerce or Electronic Commerce means buying and selling of goods, products, or services over the internet. E-commerce is also known as electronic commerce or internet commerce. These services are provided online over the internet network. Transaction of money, funds, and data are also considered as E-commerce. These business transactions can be done in four ways: Business to Business (B2B), Business to Customer (B2C), Customer to Customer (C2C), Customer to Business (C2B). The standard definition of E-commerce is a commercial transaction which happens over the internet. Online stores like Amazon, Flipkart, Shopify, Myntra, Ebay, Quikr, Olx are examples of E-commerce websites. By 2020, global retail e-commerce can reach up to 27 Trillion. Let us learn in detail about the advantages and disadvantages of E-commerce and its types.",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 17),
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
                        SuccessStoriesECommerce(
                            "face_1.jpg",
                            'Simona Hayes',
                            "Project Manager",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesECommerce(
                            "face_2.jpg",
                            'Simon Saiz',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesECommerce(
                            "face_3.jpg",
                            'Allie Grater',
                            "Project Manager",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesECommerce(
                            "face_4.jpg",
                            'Mark Ateer',
                            "Entrepreneur",
                            '" MentorUp has helped me a lot in my initial days of starting a startup. Today i run a successful IT company and this was all possible because of the amazing guidance of the mentors "'),
                        SuccessStoriesECommerce(
                            "face_5.jpg",
                            'Olivia Diaz',
                            "Project Manager",
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

  Widget SuccessStoriesECommerce(
      String ECommerceSuccessStoryimage,
      String ECommerceename,
      String ECommercejobprofession,
      String ECommerceStory) {
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
                        AssetImage("assets/images/$ECommerceSuccessStoryimage"),
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
                "$ECommerceename",
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
                "$ECommercejobprofession",
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
                  '$ECommerceStory',
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

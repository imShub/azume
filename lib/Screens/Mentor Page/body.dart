import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mentorup_app/Screens/Mentor Page/mentor_screen.dart';
import 'package:mentorup_app/Screens/Mentor Page/mentor_model.dart';
import 'package:mentorup_app/Screens/Mentor Page/profile_page.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<MentorModel> list = [
    MentorModel(
      name: "Simon Sias",
      image: "assets/images/face_1.jpg",
      type: "Business, Software",
      price: 35,
    ),
    MentorModel(
      name: "Johnny Lesh",
      image: "assets/images/face_2.jpg",
      type: "Software, Hardware",
      price: 65,
    ),
    MentorModel(
      name: "Allie Grater",
      image: "assets/images/face_3.jpg",
      type: "E-Commerce, Business",
      price: 30,
    ),
    MentorModel(
      name: "Mark Ateer",
      image: "assets/images/face_4.jpg",
      type: "Marketing, General",
      price: 80,
    ),
    MentorModel(
      name: "Olivia Diaz",
      image: "assets/images/face_5.jpg",
      type: "Business, General",
      price: 35,
    ),
  ];

  Widget _cards(context, MentorModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfilePage(model: model)));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            //color: Colors.grey[200].withOpacity(1),
            borderRadius: BorderRadius.circular(18),
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 3.0,
                spreadRadius: 0.0,
                offset: Offset(1.6, 1.6),
                color: Colors.black,
              )
            ],
          ),
          child: Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(model.image),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.shade400,
                      offset: Offset(4, 4),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    model.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Text(
                    model.type,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Color(0xFFFDD835),
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFFDD835),
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xFFFDD835),
                    size: 20,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xFF512DA8),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Color(0xFFF1E6FF)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          title: Center(
            child: Text(
              'MentorUp',
              style: TextStyle(
                fontFamily: 'SirinStencil',
                fontSize: 32.0,
                color: Color(0xFFF1E6FF),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: IconButton(
                icon: Icon(Icons.person_add, color: Color(0xFFF1E6FF)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WelcomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    height: size.height * 0.08,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[400]!.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        Icon(Icons.search),
                        SizedBox(width: 15),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF673AB7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.tune, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              _cards(context, list[0]),
              _cards(context, list[1]),
              _cards(context, list[2]),
              _cards(context, list[3]),
              _cards(context, list[4]),
            ],
          ),
        ),
      ),
    );
  }
}

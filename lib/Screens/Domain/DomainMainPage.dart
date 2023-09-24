import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Domain/Business.dart';
import 'package:mentorup_app/Screens/Domain/ECommerce.dart';
import 'package:mentorup_app/Screens/Domain/General.dart';
import 'package:mentorup_app/Screens/Domain/Hardware.dart';
import 'package:mentorup_app/Screens/Domain/Marketing.dart';
import 'package:mentorup_app/Screens/Domain/Software.dart';

class DomainMainPage extends StatefulWidget {
  @override
  _DomainMainPageState createState() => _DomainMainPageState();
}

class _DomainMainPageState extends State<DomainMainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 10,
      //   backgroundColor: kPrimaryColor,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.keyboard_arrow_left_sharp,
      //       color: Colors.white,
      //       size: 28,
      //     ),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) {
      //             return HomeScreen();
      //           },
      //         ),
      //       );
      //     },
      //   ),
      //   // centerTitle: true,
      //   title: Center(
      //     child: Image(
      //       image: AssetImage('assets/images/azume_horizontal_logo.png'),
      //       height: 40,
      //       // alignment: Alignment.centerRight,
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.only(right: 7),
      //       child: IconButton(
      //         icon: Icon(Icons.message_rounded, color: Color(0xFF70BFFF)),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) {
      //                 return ChatScreen();
      //               },
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SoftwarePage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/software.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: [
                                    .2,
                                    .9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.6),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.125),
                                child: Text(
                                  "Software",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HardwarePage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/hardware1.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: [
                                    .2,
                                    .9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.6),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.125),
                                child: Text(
                                  "Hardware",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BusinessPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/business.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: [
                                    .2,
                                    .9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.6),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.125),
                                child: Text(
                                  "Business",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ECommercePage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/ecommerce1.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: [
                                    .2,
                                    .9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.6),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.125),
                                child: Text(
                                  "E-Commerce",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MarketingPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/marketing.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: [
                                    .2,
                                    .9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.6),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.125),
                                child: Text(
                                  "Marketing",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return GeneralPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/general.jpg'),
                              fit: BoxFit.cover,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  stops: [
                                    .2,
                                    .9
                                  ],
                                  colors: [
                                    Colors.black.withOpacity(.8),
                                    Colors.black.withOpacity(.6),
                                  ])),
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * 0.125),
                                child: Text(
                                  "General",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

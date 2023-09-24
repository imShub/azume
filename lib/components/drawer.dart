import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Blogs/article_page.dart';
import 'package:mentorup_app/Screens/Blogs/blogs.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/Screens/Domain/DomainMainPage.dart';
import 'package:mentorup_app/Screens/Funder%20Page/funder_screen.dart';
import 'package:mentorup_app/Screens/Mentor%20Page/mentor_screen.dart';
import "package:mentorup_app/Screens/Mentor's%20Desk/mentor_desk_screen.dart";
import 'package:mentorup_app/Screens/Newsfeed/News.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/components/showSnackBar.dart';
import 'package:mentorup_app/constants.dart';

class CustomeDrawer extends StatelessWidget {
  const CustomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kPrimaryColor, Color.fromARGB(255, 33, 33, 95)],
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/azume_logo.png",
                  height: 150,
                  width: 120,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DomainMainPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Domains',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MentorScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Mentors',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FunderScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Funders',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ArticlePage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Webinars',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BlogsMainPage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Blogs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Newsfeed();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'NewsFeed',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MentorDeskScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Mentor\'s Desk',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
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
                  child: Text(
                    'ChatPage',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WelcomeScreen();
                          },
                        ),
                      );
                    }).catchError((e) {
                      showSnakBar(context, e.message);
                    });
                  },
                  child: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 48.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

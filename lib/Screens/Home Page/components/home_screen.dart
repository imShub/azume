import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Blogs/article_page.dart';
import 'package:mentorup_app/Screens/Blogs/blogs.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/Screens/Domain/DomainMainPage.dart';
import 'package:mentorup_app/Screens/Funder%20Page/funder_screen.dart';
import 'package:mentorup_app/Screens/Funder%20Page/profile_page.dart';
import 'package:mentorup_app/Screens/Home Page/components/body.dart';
import 'package:mentorup_app/Screens/Mentor%20Page/mentor_model.dart';
import 'package:mentorup_app/Screens/Mentor%20Page/mentor_screen.dart';

import "package:mentorup_app/Screens/Mentor's%20Desk/mentor_desk_screen.dart";
import 'package:mentorup_app/Screens/Newsfeed/News.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/constants.dart';

import '../../../components/showSnackBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      // ignore: prefer_const_constructors
      Body(),
      Newsfeed(),
      Body(),
      Body(),
      MentorDeskScreen(),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: kPrimaryColor,
        // centerTitle: true,
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/azume_horizontal_logo.png'),
                height: 40,
                // alignment: Alignment.centerRight,
              ),
              // SizedBox(
              //   width: 10,
              // ),
              // Text(
              //   'Azume',
              //   style: TextStyle(
              //     fontFamily: 'Pony',
              //     fontSize: 42.0,
              //     color: Color(0xFF70BFFF),
              //   ),
              // ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: Icon(Icons.message_rounded),
              onPressed: () {
                Future.delayed(Duration.zero).then((_) {
                  Navigator.pushNamed(
                    context,
                    '/chatScreen',
                  );
                });
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 10,
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
                    "assets/images/new_logo.png",
                    height: 150,
                    width: 120,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DomainMainPage(),
                          ));
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("perss");
        },
        child: Icon(Icons.post_add_rounded),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: kPrimaryColor,
              showLabel: true,
              itemLabelStyle: const TextStyle(
                color: kPrimaryLightColor,
                fontSize: 12,
              ),
              notchColor: kPrimaryColor,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: kPrimaryLightColor,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: kPrimaryLightColor,
                  ),
                  itemLabel: 'Home',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.explore,
                    color: kPrimaryLightColor,
                  ),
                  activeItem: Icon(
                    Icons.explore,
                    color: kPrimaryLightColor,
                  ),
                  itemLabel: 'Explore',
                ),

                ///svg example
                BottomBarItem(
                  inActiveItem: Icon(
                    CupertinoIcons.bag_fill,
                    color: kPrimaryLightColor,
                  ),
                  activeItem: Icon(
                    CupertinoIcons.bag_fill,
                    color: kPrimaryLightColor,
                  ),
                  itemLabel: 'Showcase',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.event_note_rounded,
                    color: kPrimaryLightColor,
                  ),
                  activeItem: Icon(
                    Icons.event_note_rounded,
                    color: kPrimaryLightColor,
                  ),
                  itemLabel: 'Events',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.account_circle_outlined,
                    color: kPrimaryLightColor,
                  ),
                  activeItem: Icon(
                    Icons.account_circle_outlined,
                    color: kPrimaryLightColor,
                  ),
                  itemLabel: 'Account',
                ),
              ],
              onTap: (index) {
                /// control your animation using page controller
                _pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
            )
          : null,
    );
  }
}

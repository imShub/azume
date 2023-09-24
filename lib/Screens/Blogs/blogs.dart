import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Blogs/add_blogs.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'article_page.dart';

class BlogsMainPage extends StatefulWidget {
  @override
  _BlogsMainPageState createState() => _BlogsMainPageState();
}

class _BlogsMainPageState extends State<BlogsMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Blogs(),
    );
  }
}

class Blogs extends StatelessWidget {
  Widget blog(String name, String author, String date, String image) {
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.only(bottom: 20.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 80.0,
              height: 90.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/$image'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '$name',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '-$author',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color(0xFF512DA8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 50),
              child: IconButton(
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
            ),
            Text(
              'MentorUp',
              style: TextStyle(
                fontFamily: 'SirinStencil',
                fontSize: 32.0,
                color: Color(0xFFF1E6FF),
              ),
            ),
          ],
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
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (ArticlePage()),
                    ),
                  );
                },
                child: blog(
                  'Start-ups and Their Relevance in the Cloud Computing Era',
                  'Ankit Sharma',
                  'July 3, 2017',
                  'cloudcomputing.png',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: blog(
                  'Emerging Startups showcase potential Use Cases of Blockchain in Healthcare',
                  'Manmanth Kumar',
                  'June 21, 2018',
                  'blockchain.jpeg',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: blog(
                  'Leading people through change as a key success factor for IT programs',
                  'Laura Sievänen ',
                  'February 10, 2021',
                  'meeting.jpg',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: blog(
                  'Rethinking technology partnerships to thrive in the digital age',
                  'Udaya Shankar',
                  'April 18, 2018',
                  'thinking.jpg',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: blog(
                  'Emerging Startups showcase potential Use Cases of Blockchain in Healthcare',
                  'Manmanth Kumar',
                  'June 21, 2018',
                  'blockchain.jpeg',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: blog(
                  'Rethinking technology partnerships to thrive in the digital age',
                  'Udaya Shankar',
                  'April 18, 2018',
                  'thinking.jpg',
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddBlogs()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF512DA8),
                  elevation: 3,
                  padding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 28,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                icon: Icon(
                  Icons.add,
                  color: Color(0xFFF1E6FF),
                  size: 28,
                ),
                label: Text(
                  'Add Blog',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Color(0xFFF1E6FF),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

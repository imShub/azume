import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';

void main() {
  runApp(ArticlePage());
}

class ArticlePage extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    foregroundColor: Color(0xFF512DA8),
    elevation: 5.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  );
  Widget webinar(String title, String image, String description, String time,
      String date, String speaker, String link) {
    return Card(
      elevation: 6,
      color: Color(0xFFF1E6FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    '$image',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '$title',
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '$description',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Merriweather',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                ),
                Text(
                  " $speaker",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'Merriweather',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                      ),
                      Text(" $time"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.date_range,
                      ),
                      Text(" $date"),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            TextButton(
              //color: Colors.deepPurple,
              style: flatButtonStyle,
              onPressed: () {
                launch('$link');
              },
              child: Container(
                width: 270.0,
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Click Here to watch the webinar',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.deepPurple[50],
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                webinar(
                    'How Does an Idea Become a Startup?',
                    'assets/images/laptop.jpg',
                    '- Will learn and understand the basics of how a startup works \n- Understand how new ideas are implemented ',
                    '8:45pm',
                    '21-01-2020',
                    'Jennifer McFadden',
                    'https://www.youtube.com/watch?v=_Mkc2-6b3Og'),
                SizedBox(
                  height: 18.0,
                ),
                webinar(
                    'Business Continuity for Startups amidst COVID-19',
                    'assets/images/meetings-practice.jpg',
                    'Startup India Webinar: This webinar will help startup plan for their strategies for recovering the losses faced due to pandemic. ',
                    '8:45pm',
                    '21-01-2020',
                    'Startup India',
                    'https://www.youtube.com/watch?v=i6XsRVcNThE'),
                SizedBox(
                  height: 18.0,
                ),
                webinar(
                    'The Right Way To Start A Startup',
                    'assets/images/buildIndia.JPG',
                    '- Will learn how to start a new startup and compete among various challenges\n- Will learn how to manage a startup to run efficiently',
                    '8:45pm',
                    '16-05-2020',
                    'Saurabh Jain',
                    'https://www.youtube.com/watch?v=As7571fsfRY&t=2s'),
                SizedBox(
                  height: 18.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

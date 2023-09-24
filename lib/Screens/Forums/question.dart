import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Forums/forum.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/Screens/Home Page/components/home_screen.dart';

Widget question(BuildContext context, String question) {
  return Card(
    color: Colors.deepPurple[50],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    elevation: 5.0,
    shadowColor: Colors.deepPurple,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ForumDetailPage(),
                ),
              );
            },
            child: Text(
              '$question',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ),
        Divider(
          thickness: 1.5,
          color: Colors.deepPurple,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextButton(
                onPressed: () {},
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Upvote',
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.question_answer,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Answer',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => ForumDetailPage(),
                  ),
                );
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.remove_red_eye,
                      color: Colors.deepPurple,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'View',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class ForumQuestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            children: [
              question(
                context,
                'How do I become a expert in programming as well as design ??',
              ),
              question(
                context,
                'What are the risks in investing in Startups??',
              ),
              question(
                context,
                'How to start a sucessful Startup??',
              ),
              question(
                context,
                'How should you manage the failures of your team members in a Startup??',
              ),
              question(
                context,
                'How can you improve co-ordination between your team  ??',
              ),
              question(
                context,
                'How to overcome the challenges and difficulties faced by new Startups??',
              ),
              SizedBox(
                height: 5.0,
              ),
              Card(
                elevation: 7.0,
                color: Color(0xFF512DA8),
                shadowColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
                  child: TextButton(
                    onPressed: () {},
                    // color: Color(0xFF512DA8),
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(15.0),
                    // ),
                    child: Text(
                      '+ Add Question',
                      style: TextStyle(
                        color: Color(0xFFF1E6FF),
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

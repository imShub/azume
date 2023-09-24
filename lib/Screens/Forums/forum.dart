import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Forums/forum_screen.dart';
import 'package:mentorup_app/Screens/Forums/question.dart';

class ForumDetailPage extends StatefulWidget {
  @override
  _ForumDetailPageState createState() => new _ForumDetailPageState();
}

var ForumPostArr = [
  new ForumPostEntry("Angela Sion", "2 Days ago", 0, 0,
      "Being a designer is one thing. Proving you’re an expert is another thing entirely. To be an expert, you must first possess the design sense, knowledge, and tools of a good designer. But you must also be able to provide a valuable service, be innovative, have an established reputation, and be able to tell others about these qualities in a coherent and engaging manner."),
  new ForumPostEntry("Branden Maxfield", "23 Hours ago", 1, 0,
      "The process also includes marketing yourself – as a designer and as an expert – through various means. Getting out there and joining the conversation, creating valuable content, and helping others is essential as well. Becoming an expert also requires building a brand that has a solid reputation for creative and successful solutions."),
  new ForumPostEntry("Charlotte Samuels", "2 Days ago", 5, 0,
      "In today’s post, we highlight a few effective, yet inexpensive marketing strategies that will help you get your name out there and build your credibility as a design expert. We also review some brand-building techniques that will help your name become synonymous with expertise in design."),
  new ForumPostEntry("Stefan Diaz", "2 Days ago", 0, 0,
      "There are a host of requisite design skills you must master in order to become an expert. Having design sense and an eye for aesthetics is a good place to start. Mastering Photoshop and the principles of UX/UI are good skills to have as well. There’s also a healthy dose of business knowledge experts must have – the ability to communicate and collaborate, organization, and some measure of sales and marketing knowledge among them. Acquiring these skills will take time, experience, and a lot of patience. But as you develop your portfolio and satisfy your customers’ needs, the aforementioned skills will begin to develop. Once you’ve compiled a good collection of these skills, you can move on to the next steps in becoming an expert web designer."),
];

class _ForumDetailPageState extends State<ForumDetailPage> {
  @override
  Widget build(BuildContext context) {
    var questionSection = new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Text(
            " How do I become a expert in programming as well as design ??",
            textScaleFactor: 1.5,
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          new Padding(
            padding: const EdgeInsets.all(12.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // new IconWithText(Icons.laptop_mac, "Technology"),
                // new IconWithText(
                //   Icons.check_circle,
                //   "Answered",
                //   iconColor: Colors.green,
                // ),
                // new IconWithText(Icons.remove_red_eye, "54")
              ],
            ),
          ),
          new Divider()
        ],
      ),
    );

    var responses = new Container(
        padding: const EdgeInsets.all(8.0),
        child: new ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              new ForumPost(ForumPostArr[index]),
          itemCount: ForumPostArr.length,
        ));

    return SafeArea(
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xFF512DA8),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ForumScreen();
                  },
                ),
              );
            },
            color: Color(0xFFF1E6FF),
          ),
        ),
        body: new Column(
          children: <Widget>[
            questionSection,
            new Expanded(
              child: new Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: responses,
              ),
            ),
            Card(
              elevation: 5.0,
              margin: EdgeInsets.only(bottom: 20.0),
              color: Colors.deepPurple,
              shadowColor: Colors.deepPurple[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 7.0),
                child: TextButton(
                  onPressed: () {},
                  // padding: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 7.0),
                  // color: Colors.deepPurple,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(15.0),
                  // ),
                  child: Text(
                    '+ Add Answer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() {}
}

class ForumPostEntry {
  final String username;
  final String hours;
  final int likes;
  final int dislikes;
  final String text;

  ForumPostEntry(
      this.username, this.hours, this.likes, this.dislikes, this.text);
}

class ForumPost extends StatelessWidget {
  final ForumPostEntry entry;

  ForumPost(this.entry);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0)),
            ),
            child: new Row(
              children: <Widget>[
                new Icon(
                  Icons.person,
                  size: 50.0,
                  color: Colors.white,
                ),
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        entry.username,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      new Text(
                        entry.hours,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Text(
                        entry.likes.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: new Icon(
                        Icons.thumb_down,
                        color: Colors.white,
                      ),
                    ),
                    new Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 2.0),
                      child: new Text(
                        entry.dislikes.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 2.0),
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: const BorderRadius.only(
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0))),
            child: new Text(
              entry.text,
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData? iconData;
  final String? text;
  final Color? iconColor;

  const IconWithText({Key? key, this.iconData, this.text, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Icon(
            this.iconData,
            color: this.iconColor,
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(this.text.toString()),
          ),
        ],
      ),
    );
  }
}

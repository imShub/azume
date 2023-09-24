import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Forums/forum.dart';
import 'package:mentorup_app/Screens/Forums/question.dart';

class ForumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forum',
      routes: <String, WidgetBuilder>{
        'questions_page': (BuildContext context) => new ForumQuestion(),
        'Answers': (BuildContext context) => new ForumDetailPage(),
      },
      initialRoute: 'questions_page',
    );
  }
}

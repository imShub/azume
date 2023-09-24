import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_message.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_profile.dart';
import 'package:mentorup_app/constants.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello", messageType: "Sender"),
    ChatMessage(messageContent: "How have you been?", messageType: "Sender"),
    ChatMessage(
        messageContent: "Hey, I am doing fine. What about you?",
        messageType: "Receiver"),
    ChatMessage(messageContent: "Doing Ok", messageType: "Sender"),
    ChatMessage(messageContent: "Nice. Good Bye", messageType: "Receiver"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 10,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            "Techie Tribe",
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 30.0,
              color: Color(0xFFF1E6FF),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: IconButton(
              icon: Icon(
                Icons.more_vert_rounded,
                color: Color(0xFFF1E6FF),
                size: 28,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChatProfile();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "Receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (messages[index].messageType == "Receiver"
                              ? kPrimaryLightColor
                              : kPrimaryLightColor),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          messages[index].messageContent,
                          style: TextStyle(
                            fontSize: 15,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  decoration: new BoxDecoration(
                    color: kPrimaryLightColor,
                    border: new Border(
                      top: new BorderSide(color: Color(0xFF512DA8), width: 0.5),
                    ),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.smiley,
                          color: kPrimaryColor,
                          size: 25,
                        ),
                      ),
                      // Text input
                      Flexible(
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Type a message',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      // Send Message Button
                      IconButton(
                        icon: Icon(
                          Icons.send,
                        ),
                        onPressed: () => {},
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

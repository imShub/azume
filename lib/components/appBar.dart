import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Chat%20Page/chat_screen.dart';
import 'package:mentorup_app/constants.dart';

class CustomAppBar extends StatelessWidget {
  dynamic title;
  CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: kPrimaryColor,
      // centerTitle: true,
      title: title != null
          ? title
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image:
                        AssetImage('assets/images/azume_horizontal_logo.png'),
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
            icon: Icon(Icons.message_rounded, color: Color(0xFF70BFFF)),
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
          ),
        ),
      ],
    );
  }
}

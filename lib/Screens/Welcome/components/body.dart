import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/Screens/Login/login_screen.dart';
import 'package:mentorup_app/Screens/Signup/signup_screen.dart';
import 'package:mentorup_app/Screens/Welcome/components/background.dart';
import 'package:mentorup_app/components/rounded_button.dart';
import 'package:mentorup_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "WELCOME TO AZUME !!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // fontStyle: FontStyle.italic,
              fontSize: 22,
              color: kPrimaryLightColor,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Image.asset(
            "assets/images/new_logo.png",
            width: 180,
          ),
          Text(
            "Connect. Collaborate. Catalyze.",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xFF254A8A)),
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
                child: Text(
                  'Get Started >>',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Icon(Icons.keyboard_double_arrow_right_rounded),
            ],
          ),
        ],
      ),
    );
  }
}

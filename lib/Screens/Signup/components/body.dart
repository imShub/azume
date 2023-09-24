import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Login/login_screen.dart';
import 'package:mentorup_app/Screens/Signup/components/background.dart';
import 'package:mentorup_app/Screens/Signup/components/or_divider.dart';
import 'package:mentorup_app/Screens/Signup/components/social_icon.dart';
import 'package:mentorup_app/Screens/Signup/sign_in_as_funder.dart';
import 'package:mentorup_app/Screens/Signup/sign_in_as_mentor.dart';
import 'package:mentorup_app/Screens/Signup/sign_in_as_student.dart';
import 'package:mentorup_app/components/already_have_an_account_acheck.dart';
import 'package:mentorup_app/components/rounded_button.dart';
import 'package:mentorup_app/components/rounded_input_field.dart';
import 'package:mentorup_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorup_app/Screens/Signup/sign_in_as_team.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  bool login = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP AS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryLightColor,
                  fontSize: 24,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Column(
                //   children: [
                // MaterialButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return Sign_in_as_team();
                //         },
                //       ),
                //     );
                //   },
                //   elevation: 4.0,
                //   shape: CircleBorder(),
                //   clipBehavior: Clip.hardEdge,
                //   color: Color(0xFFF1E6FF),
                //   child: Ink.image(
                //     image: AssetImage("assets/images/team.png"),
                //     fit: BoxFit.cover,
                //     width: 50.0,
                //     height: 50.0,
                //     // child: InkWell(
                //     //   // onTap: () {
                //     //   //
                //     //   // },
                //     // ),
                //   ),
                // ),
                //     Text(
                //       "Team",
                //       style: TextStyle(
                //           color: kPrimaryLightColor,
                //           fontSize: 15,
                //           fontWeight: FontWeight.bold),
                //     )
                //   ],
                // ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Sign_in_as_student();
                            },
                          ),
                        );
                      },
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(4.0),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFFF1E6FF),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Ink.image(
                        image: AssetImage("assets/images/student.png"),
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                        // child: InkWell(
                        //   onTap: () {},
                        // ),
                      ),
                    ),
                    Text(
                      "Learner",
                      style: TextStyle(
                          color: kPrimaryLightColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Sign_in_as_mentor();
                            },
                          ),
                        );
                      },
                      style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(4.0),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          CircleBorder(),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFFF1E6FF),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Ink.image(
                        image: AssetImage("assets/images/mentor.png"),
                        fit: BoxFit.cover,
                        width: 50.0,
                        height: 50.0,
                        // child: InkWell(
                        //   onTap: () {},
                        // ),
                      ),
                    ),
                    Text(
                      "Mentor",
                      style: TextStyle(
                          color: kPrimaryLightColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            // AlreadyHaveAnAccountCheck(
            //   login: false,
            //   press: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(
            //         builder: (context) => LoginScreen(),
            //       ),
            //     );
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  login
                      ? "Don't have an Account ? "
                      : "Already have an Account ? ",
                  style: TextStyle(color: kPrimaryLightColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    login ? "Sign Up" : "Sign In",
                    style: TextStyle(
                      color: kPrimaryLightColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

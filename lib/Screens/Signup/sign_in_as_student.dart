import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentorup_app/Screens/Login/components/background.dart';
import 'package:mentorup_app/Services/usermanagment.dart';
import 'package:mentorup_app/components/rounded_input_field.dart';
import 'package:mentorup_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorup_app/constants.dart';

import '../../components/rounded_button.dart';
import '../../components/showSnackBar.dart';

class Sign_in_as_student extends StatefulWidget {
  @override
  _Sign_in_as_studentState createState() => _Sign_in_as_studentState();
}

class _Sign_in_as_studentState extends State<Sign_in_as_student> {
  late String firstName = "";
  late String lastName = "";
  late String email = "";
  late String password = "";
  late num phoneNumber;
  late String displayName = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP AS LEARNER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    color: kPrimaryLightColor),
              ),
              SizedBox(height: size.height * 0.01),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.15,
              ),
              SizedBox(height: size.height * 0.01),
              RoundedInputField(
                hintText: "First Name",
                onChanged: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "LastName",
                onChanged: (value) {
                  setState(() {
                    lastName = value;
                    // displayName = firstName + " " + lastName;
                  });
                },
              ),
              RoundedInputField(
                icon: Icons.email,
                hintText: "Email ID",
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              RoundedInputField(
                icon: Icons.phone,
                hintText: "Phone Number",
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value as num;
                  });
                },
              ),
              // RoundedInputField(
              //   icon: Icons.people,
              //   hintText: "Team Id",
              //   onChanged: (value) {},
              // ),
              // RoundedButton(
              //   text: "SIGNUP",
              //   press: () {
              //     try {
              //       FirebaseAuth.instance
              //           .createUserWithEmailAndPassword(
              //               email: email, password: password)
              //           .then((signedInUser) {
              //         User? firebaseUser = signedInUser.user;
              //         firebaseUser
              //             ?.updateDisplayName(firstName + ' ' + lastName);
              //         // firebaseUser?.updatePhoneNumber(phoneNumber);
              //         UserManagment().storeNewUser(signedInUser, context);
              //       });
              //     } on FirebaseAuthException catch (e) {
              //       showSnakBar(context, e.message);
              //     }
              //   },
              // ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                color: kPrimaryColor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email, password: password)
                            .then((signedInUser) {
                          User? firebaseUser = signedInUser.user;
                          firebaseUser
                              ?.updateDisplayName(firstName + ' ' + lastName);
                          // firebaseUser?.updatePhoneNumber(phoneNumber);
                          UserManagment().storeNewUser(signedInUser, context);
                        });
                      } on FirebaseAuthException catch (e) {
                        showSnakBar(context, e.message);
                      }
                    },
                    child: Text(
                      "SignUP",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(kPrimaryColor)),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 10),
              //   width: size.width * 0.8,
              //   color: kPrimaryColor,
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(29),
              //     child: ElevatedButton(
              //       onPressed: () async {
              //         try {
              //           FirebaseAuth.instance
              //               .createUserWithEmailAndPassword(
              //                   email: email, password: password)
              //               .then((signedInUser) {
              //             User? firebaseUser = signedInUser.user;
              //             firebaseUser
              //                 ?.updateDisplayName(firstName + ' ' + lastName);
              //             // firebaseUser?.updatePhoneNumber(phoneNumber);
              //             UserManagment().storeNewUser(signedInUser, context);
              //           });
              //         } on FirebaseAuthException catch (e) {
              //           showSnakBar(context, e.message);
              //         }
              //       },
              //       child: Text(
              //         "SignUP",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

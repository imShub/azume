import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mentorup_app/Screens/Login/components/background.dart';
import 'package:mentorup_app/Screens/Signup/signup_screen.dart';
import 'package:mentorup_app/components/already_have_an_account_acheck.dart';
import 'package:mentorup_app/components/rounded_button.dart';
import 'package:mentorup_app/components/rounded_input_field.dart';
import 'package:mentorup_app/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mentorup_app/constants.dart';

class Sign_in_as_team extends StatefulWidget {
  @override
  _Sign_in_as_teamState createState() => _Sign_in_as_teamState();
}

class _Sign_in_as_teamState extends State<Sign_in_as_team> {
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
                "SIGNUP AS TEAM",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Color(0xFF6F35A5)),
              ),
              SizedBox(height: size.height * 0.02),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(
                icon: Icons.group,
                hintText: "Project Name",
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.assignment_outlined,
                hintText: "Project Description",
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

class Sign_in_as_funder extends StatefulWidget {
  @override
  _Sign_in_as_funderState createState() => _Sign_in_as_funderState();
}

class _Sign_in_as_funderState extends State<Sign_in_as_funder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.03),
              Text(
                "SIGNUP AS FUNDER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    color: Color(0xFF6F35A5)),
              ),
              SizedBox(height: size.height * 0.01),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.14,
              ),
              SizedBox(height: size.height * 0.01),
              RoundedInputField(
                hintText: "First Name",
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "LastName",
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.email,
                hintText: "Email ID",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedInputField(
                icon: Icons.phone,
                hintText: "Phone Number",
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

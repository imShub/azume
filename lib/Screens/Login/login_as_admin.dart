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

class Login_as_admin extends StatefulWidget {
  @override
  _Login_as_adminState createState() => _Login_as_adminState();
}

class _Login_as_adminState extends State<Login_as_admin> {
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
                "LOGIN AS ADMIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    color: kPrimaryLightColor),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.15,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(
                icon: Icons.email,
                hintText: "Email ID",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

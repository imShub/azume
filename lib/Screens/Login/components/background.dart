import 'package:flutter/material.dart';
import 'package:mentorup_app/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,

      // color: azumeSecondaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'assets/images/azume_plain_bg.png', // Replace with your image path
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          child,
        ],
      ),
    );
  }
}

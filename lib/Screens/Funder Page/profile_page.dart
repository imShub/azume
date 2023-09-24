import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Funder Page/funder_model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.model}) : super(key: key);
  final FunderModel model;
  Widget _appBar(context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Icon(
              Icons.keyboard_arrow_left,
              size: 30,
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.favorite_border,
          size: 25,
        ),
      ],
    );
  }

  Widget _cards(
    context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              image: DecorationImage(
                image: AssetImage(model.image),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1.5,
                  offset: Offset(1.6, 1.6),
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _description() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  model.name,
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  model.type,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            // Spacer(),
          ],
        ),
        SizedBox(height: 15),
        Text(
          "About Me",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            height: 1.3,
          ),
        ),
        SizedBox(height: 5),
        Center(
          child: Text(
            'I\'ve been called a thought leader and an expert. My job is leading digital strategy for a great agency called Cornett in Lexington, Ky. My experiences have given me the opportunity to flourish more and more. To serve the small business community, I offer funds each month. Let\'s connect!',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _achivment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Achievements",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            height: 1.3,
          ),
        ),
        SizedBox(height: 14),
        _achivmentCard1(),
        SizedBox(height: 16),
        _achivmentCard2(),
        SizedBox(height: 18),
      ],
    );
  }

  Widget _achivmentCard1() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 55,
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/boost.jpg'),
          ),
        ),
        title: Text(
          "Supported 100+ startups",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          'Helping youth identify and access learning and assessment accommodations',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Widget _achivmentCard2() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 55,
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/help.jpg'),
          ),
        ),
        title: Text(
          "Funded 10K+ People",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          'Assisting to exposure to entrepreneurship training and planning',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF512DA8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(55),
          ),
        ),
        onPressed: () {},
        child: Container(
          height: 50,
          width: 180,
          alignment: Alignment.center,
          child: Text(
            "Talk to funder",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _appBar(context),
                _cards(context),
                SizedBox(height: 15),
                _description(),
                SizedBox(height: 12),
                _achivment(),
                _button(),
                SizedBox(height: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

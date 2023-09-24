import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';

class UserManagment {
  storeNewUser(UserCredential user, context) {
    print(user);
    FirebaseFirestore.instance.collection('/users').add({
      'email': user.user?.email,
      'uid': user.user?.uid,
      'displayName': user.user!.displayName,
      // 'phone': user.user?.phoneNumber,
    }).then((value) {
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    }).catchError((e) {
      print(e);
    });
  }
}

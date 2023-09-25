import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/constants.dart';
import 'package:mentorup_app/splashscreen.dart';
import 'package:mentorup_app/Screens/Chat Page/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/Domain/Business.dart';
import 'Screens/Domain/ECommerce.dart';
import 'Screens/Domain/General.dart';
import 'Screens/Domain/Hardware.dart';
import 'Screens/Domain/Marketing.dart';
import 'Screens/Domain/Software.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Azume',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: SplashScreen(),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => SplashScreen(),
        '/softwarePage': (context) => SoftwarePage(),
        '/hardwarePage': (context) => HardwarePage(),
        '/businessPage': (context) => BusinessPage(),
        '/ecommercePage': (context) => ECommercePage(),
        '/marketingPage': (context) => MarketingPage(),
        '/generalPage': (context) => GeneralPage(),
        '/chatScreen': (context) => ChatScreen(),
      },
    );
  }
}

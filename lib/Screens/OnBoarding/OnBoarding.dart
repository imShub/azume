import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mentorup_app/Screens/Home%20Page/components/home_screen.dart';
import 'package:mentorup_app/Screens/OnBoarding/components/custome_onboarding_model.dart';
import 'package:mentorup_app/Screens/Welcome/welcome_screen.dart';
import 'package:mentorup_app/constants.dart';

class OnboardingScreen extends StatefulWidget {
  static const String id = "onboarding screen";
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Widget> getPages() {
    return [
      const CustomOnboardingPageViewModel(
        imageUrl: 'assets/images/onboarding-image-1.png',
        modelTitle: 'Exchange Referrals',
        modelDescription:
            "Discover a world of possibilities as you connect and exchange referrals with fellow entrepreneurs. Leverage each other's networks and watch your business grow.",
      ),
      const CustomOnboardingPageViewModel(
        imageUrl: 'assets/images/onboarding-image-2.png',
        modelTitle: 'Showcase Products',
        modelDescription:
            "Showcase your products to a community of like-minded entrepreneurs. Whether it's a new invention or a service, Azume provides the platform to shine a light on what you offer.",
      ),
      const CustomOnboardingPageViewModel(
        imageUrl: 'assets/images/onboarding-image-3.png',
        modelTitle: 'Share Knowledge',
        modelDescription:
            'Share your expertise and learn from others in a collaborative environment. Azume is your go-to destination for sharing knowledge, insights, and experiences with fellow entrepreneurs.',
      ),
      // const CustomOnboardingPageViewModel(
      //   imageUrl: 'assets/images/onboarding-image-3.png',
      //   modelTitle: 'Engage with Gamification',
      //   modelDescription:
      //       'Experience a new dimension of engagement through gamification. Earn rewards, badges, and recognition as you actively participate in the Azume community.',
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          rawPages: getPages(),
          onDone: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          )),
          done: const Text(
            'Get Started',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: kPrimaryLightColor,
            ),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(
              color: kPrimaryLightColor,
            ),
          ),
          next: FaIcon(
            FontAwesomeIcons.arrowRight,
            size: 18,
            color: kPrimaryLightColor,
          ),
          globalBackgroundColor: const Color(0xff7F7F7F),
          dotsDecorator: const DotsDecorator(
            activeColor: kPrimaryLightColor,
          ),
        ),
      ),
    );
  }
}

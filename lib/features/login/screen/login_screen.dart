import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nikko_logisitic_consumer/features/login/screen/onboardingscreen_second.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // title: const Text('Login Screen'),
        actions: [
          const Text('Eng'),
          const Gap(10),
          Container(
            child: const Icon(Icons.arrow_drop_down_circle_outlined),
          ),
          Gap(20),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Image(
            image: AssetImage('assets/onboarding/onboarding_first.png'),
          ),
          const Gap(20),
          const Center(
            child: Text(
              'Welcome to NIKKOU!',
              style: TextStyle(
                color: Color.fromRGBO(14, 86, 135, 1),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Center(
            child: Text(
              'Your Logistic Companion',
              style: TextStyle(
                color: Color.fromRGBO(14, 86, 135, 1),
                fontSize: 18,
              ),
            ),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Manage your deliveries effortlessly with cutting-edge tools like AR navigation, real-time tracking, and offline access. Simplify logistics, one route at a time ',
                style: TextStyle(fontSize: 16, color: Colors.black),

              ),
            ),
          ),
          const Spacer(),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(300, 70),
              backgroundColor: Color.fromRGBO(56, 155, 221, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OnboardingscreenSecond(),
                ),
              );
            },
            child: const Text('Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
          ),
          const Gap(20),
        ],
      )),
    );
  }
}

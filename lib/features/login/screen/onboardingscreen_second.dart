import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nikko_logisitic_consumer/features/login/screen/onboarding_thirds.dart';

class OnboardingscreenSecond extends StatelessWidget {
  const OnboardingscreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: Image.asset('assets/onboarding/onboarding_second.png').image),
          const Gap(20),
          const Center(
            child: Text(
              'Your Smart Delivery Assistant',
              style: TextStyle(
                color: Color.fromRGBO(14, 86, 135, 1),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Explore features like augmented reality navigation, secure biometric login, and seamless offline functionality to keep your operations running smoothly.',
                style: TextStyle(fontSize: 14, color: Colors.black),
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
                  builder: (context) => const OnboardingThirds(),
                ),
              );
            },
            child: const Text('Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),),
          ),
          const Gap(20),
        ],
      ),
    );
  }
}

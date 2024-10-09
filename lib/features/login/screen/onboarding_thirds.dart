import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nikko_logisitic_consumer/features/login/screen/onboarding_fourth.dart';
import 'package:nikko_logisitic_consumer/features/login/screen/onboardingscreen_second.dart';

import '../widgets/permission_button.dart';

class OnboardingThirds extends StatelessWidget {
  const OnboardingThirds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // width: double.infinity,
            height: 270,
            child: Image(
                image: Image.asset('assets/onboarding/onboarding_third.png',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,)
                    .image),
          ),
          const Gap(20),
          const Center(
            child: Text(
              'Let\'s Get You Setup',
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
              text: const TextSpan(
                text:
                    'We need a few permissions to ensure the app works its best: location for accurate routing, camera for quick scans, and microphone for voice commands.',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ),
          PermissionButton(
            text1: 'Camera',
            text2: 'Enable camera permission for quick scans',
            icon2: Icons.arrow_forward_ios_rounded,
            icon1: Icons.camera_alt_outlined,
          ),
          PermissionButton(
            text1: 'Location',
            text2: 'For better location',
            icon2: Icons.arrow_forward_ios_rounded,
            icon1: Icons.location_on_outlined,
          ),
          PermissionButton(
            text1: 'Microphone',
            text2: 'For speech',
            icon1: Icons.mic_none_outlined,
            icon2: Icons.arrow_forward_ios_rounded,
          ),
          const Spacer(),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(300, 70),
              backgroundColor: const Color.fromRGBO(56, 155, 221, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OnboardingFourth(),
                ),
              );
            },
            child: const Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}

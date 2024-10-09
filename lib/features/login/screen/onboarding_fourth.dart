import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nikko_logisitic_consumer/features/login/widgets/permission_button.dart';
import 'package:permission_handler/permission_handler.dart';

class OnboardingFourth extends StatefulWidget {
  const OnboardingFourth({super.key});

  @override
  State<OnboardingFourth> createState() => _OnboardingFourthState();
}

class _OnboardingFourthState extends State<OnboardingFourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(100),
          GestureDetector(
              onTap: () async {
                var status = await Permission.camera.status;
                // We haven't asked for permission yet or the user has denied it before, but not permanently.
                if (await Permission.camera.request().isGranted) {
                  // Either the permission was already granted
                  // before or the user just granted it.
                  ScaffoldMessenger.of(context).showSnackBar(
                    new SnackBar(
                      content: new Text("Granted"),
                    ),
                  );
                }
              },
              child: Image(
                image: Image.asset('assets/onboarding/cameraperm.png').image,
              )),

          const Gap(20),
          PermissionButton(text1: 'Camera', text2: 'Enable camera permission for quick scans', icon2:Icons.arrow_forward_ios_rounded, icon1: Icons.camera_alt_outlined,),
        PermissionButton(text1: 'Location', text2: 'For better location', icon2: Icons.arrow_forward_ios_rounded, icon1:Icons.location_on_outlined,),
          PermissionButton(text1: 'Microphone', text2: 'For speech', icon1: Icons.mic_none_outlined, icon2: Icons.arrow_forward_ios_rounded,),
        ],
      ),
    );
  }
}

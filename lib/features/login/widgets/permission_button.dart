import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PermissionButton extends StatelessWidget {
  String text1;
  String text2;
  IconData icon1;
  IconData icon2;
  PermissionButton(
      {super.key,
      required this.text1,
      required this.text2,
      required this.icon1,
      required this.icon2});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon1 as IconData?),
            const Gap(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(icon2 as IconData?),
            const Gap(10),
          ],
        ));
  }
}

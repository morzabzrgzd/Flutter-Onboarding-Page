import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';
import '../controllers/onborading_ctrl.dart';

class SkipBtn extends StatelessWidget {
  const SkipBtn({
    super.key,
    required this.onboradingCtrl,
  });

  final OnboradingController onboradingCtrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 10,
      child: SafeArea(
        child: TextButton(
          style: TextButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {
            onboradingCtrl.skipOnboarding();
          },
          child: Text(
            'Skip',
            style: GoogleFonts.dmSans(
              fontSize: 16,
              color: AppColor.primeryColor,
            ),
          ),
        ),
      ),
    );
  }
}

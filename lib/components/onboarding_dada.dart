import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';
import '../controllers/onborading_ctrl.dart';

class OnboradingData extends StatelessWidget {
  const OnboradingData({
    super.key,
    required this.onboradingCtrl,
  });

  final OnboradingController onboradingCtrl;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onboradingCtrl.onborading.length,
      controller: onboradingCtrl.pageCtrl,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          color: AppColor.bgColor,
          child: Column(
            children: [
              const SizedBox(height: 60),
              SafeArea(
                child: Image.asset(
                  onboradingCtrl.onborading[index].img,
                  scale: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    onboradingCtrl.onborading[index].title,
                    style: GoogleFonts.dmSans(
                        fontSize: 28,
                        color: AppColor.primeryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    onboradingCtrl.onborading[index].subtitle,
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      color: AppColor.subTitleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

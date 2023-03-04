import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_app/controllers/onborading_ctrl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/onboarding_dada.dart';
import '../components/skip_btn.dart';
import '../constants/app_color.dart';

class OnboradingPage extends StatelessWidget {
  const OnboradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var onboradingCtrl = Get.put(OnboradingController());
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          OnboradingData(onboradingCtrl: onboradingCtrl),
          SkipBtn(onboradingCtrl: onboradingCtrl),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primeryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.dmSans(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: SmoothPageIndicator(
                      controller: onboradingCtrl.pageCtrl, // PageController
                      count: onboradingCtrl.onborading.length,
                      effect: WormEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: AppColor.primeryColor,
                          dotColor:
                              Colors.grey.shade400), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onborading_app/models/onbording_model.dart';

class OnboradingController extends GetxController {
  var pageCtrl = PageController();

  skipOnboarding() {
    pageCtrl.jumpToPage(2);
  }

  List onborading = [
    OnboardingModel(
      img: 'assets/images/img1.png',
      title: 'Find Best Musicians All\nAround Your City',
      subtitle:
          'Thousands of musicians around you are\nwaiting to rock your event.',
    ),
    OnboardingModel(
      img: 'assets/images/img2.png',
      title: 'Fastest Way To Book\nGreat Musicians',
      subtitle:
          'Find the perfect match to perform for your\nevent and make the day remarkable.',
    ),
    OnboardingModel(
      img: 'assets/images/img3.png',
      title: 'Find Top Sessions Pros\nFor Your Event',
      subtitle:
          'Find the perfect match to perform for your\nevent and make the day remarkable.',
    ),
  ];
}

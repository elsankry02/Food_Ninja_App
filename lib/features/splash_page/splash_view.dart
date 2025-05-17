// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:food_ninga/constant/image_manger.dart';
import 'package:food_ninga/constant/text_manger.dart';
import 'package:food_ninga/features/onboarding_page/onboarding_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    splashFoodNinja();
    super.initState();
  }

  splashFoodNinja() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            ImageManger.kPattern,
            fit: BoxFit.fill,
          ),
          Image.asset(
            height: 150,
            ImageManger.kLogo,
          ),
          const Text(
              textAlign: TextAlign.center,
              'FoodNinja',
              style: TextManger.textstyle40Viga),
          const Text(
              textAlign: TextAlign.center,
              'Deliever Favorite Food',
              style: TextManger.textstyle14Bold),
        ],
      ),
    );
  }
}

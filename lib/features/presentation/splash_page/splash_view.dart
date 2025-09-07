// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:food_ninga/core/constant/app_images.dart';
import 'package:food_ninga/core/constant/app_text.dart';
import 'package:food_ninga/features/presentation/onboarding_page/onboarding_page.dart';

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
            AppImages.kPattern,
            fit: BoxFit.fill,
          ),
          Image.asset(
            height: 150,
            AppImages.kLogo,
          ),
          const Text(
              textAlign: TextAlign.center,
              'FoodNinja',
              style: AppText.textstyle40Viga),
          const Text(
              textAlign: TextAlign.center,
              'Deliever Favorite Food',
              style: AppText.textstyle14Bold),
        ],
      ),
    );
  }
}

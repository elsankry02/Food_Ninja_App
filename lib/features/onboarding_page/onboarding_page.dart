import 'package:flutter/material.dart';
import 'package:food_ninga/components/custom_button_widget.dart';
import 'package:food_ninga/features/home/views/sign_up_page/sign_up_page.dart';

import '../../constant/text_manger.dart';
import 'model/onboarding_model.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: onboardingItems.length,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    onboardingItems[index].image,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    onboardingItems[index].subTitel,
                    style: TextManger.textstyle22Bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    onboardingItems[index].titel,
                    style: TextManger.textStyle12Book,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == onboardingItems.length - 1) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              }
              pageController.animateToPage(++currentIndex,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
            child: const UnconstrainedBox(
              child: CustomButtonWidget(
                textButton: 'Next',
                horizontal: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

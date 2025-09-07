import 'package:flutter/material.dart';

import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_text.dart';

class LogoLoginWidget extends StatelessWidget {
  const LogoLoginWidget({super.key, required this.textSign});
  final String textSign;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          AppImages.kPattern,
          width: double.infinity,
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 47,
              ),
              Image.asset(
                height: 140,
                AppImages.kLogo,
              ),
              const Text(
                  textAlign: TextAlign.center,
                  'FoodNinja',
                  style: AppText.textstyle40Viga),
              const Text(
                textAlign: TextAlign.center,
                'Deliever Favorite Food',
                style: AppText.textstyle14Bold,
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                textAlign: TextAlign.center,
                textSign,
                style: AppText.textstyle22Bold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

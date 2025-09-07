import 'package:flutter/material.dart';

import '../constant/app_images.dart';
import '../constant/app_text.dart';

class CustomFoodNinjaLogoWidget extends StatelessWidget {
  const CustomFoodNinjaLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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

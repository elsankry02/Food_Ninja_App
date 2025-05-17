import 'package:flutter/material.dart';

import '../constant/image_manger.dart';
import '../constant/text_manger.dart';

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

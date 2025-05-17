import 'package:flutter/material.dart';

import '../../../../../constant/image_manger.dart';
import '../../../../../constant/text_manger.dart';

class LogoLoginWidget extends StatelessWidget {
  const LogoLoginWidget({super.key, required this.textSign});
  final String textSign;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          ImageManger.kPattern,
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
                ImageManger.kLogo,
              ),
              const Text(
                  textAlign: TextAlign.center,
                  'FoodNinja',
                  style: TextManger.textstyle40Viga),
              const Text(
                textAlign: TextAlign.center,
                'Deliever Favorite Food',
                style: TextManger.textstyle14Bold,
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                textAlign: TextAlign.center,
                textSign,
                style: TextManger.textstyle22Bold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

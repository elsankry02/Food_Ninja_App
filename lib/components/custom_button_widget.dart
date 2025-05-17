import 'package:flutter/material.dart';

import '../constant/color_manger.dart';
import '../constant/text_manger.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.textButton});
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
        decoration: BoxDecoration(
          color: ColorManger.kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            textButton,
            style: TextManger.textstyle14Bold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constant/app_color.dart';
import '../constant/app_text.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key, required this.textButton, required this.horizontal});
  final String textButton;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: 18),
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          textButton,
          style: AppText.textstyle14Bold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

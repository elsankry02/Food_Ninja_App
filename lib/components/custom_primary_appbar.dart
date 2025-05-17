import 'package:flutter/material.dart';
import 'package:food_ninga/constant/text_manger.dart';

class CustomPrimaryAppBar extends StatelessWidget {
  const CustomPrimaryAppBar({
    super.key,
    required this.titel,
  });

  final String titel;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titel,
                style:
                    TextManger.textstyle25Bold.copyWith(color: theme.hintColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

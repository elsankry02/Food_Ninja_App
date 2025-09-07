import 'package:flutter/material.dart';
import '../../../../core/constant/app_text.dart';

class VerificationCodeWidget extends StatelessWidget {
  const VerificationCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 103,
      width: 347,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            style: AppText.textstyle33Medium.copyWith(color: theme.hintColor),
            '1',
          ),
          Text(
            style: AppText.textstyle33Medium.copyWith(color: theme.hintColor),
            '9',
          ),
          Text(
            style: AppText.textstyle33Medium.copyWith(color: theme.hintColor),
            '2',
          ),
          Text(
            style: AppText.textstyle33Medium.copyWith(color: theme.hintColor),
            '3',
          ),
        ],
      ),
    );
  }
}

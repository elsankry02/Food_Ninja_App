import 'package:flutter/material.dart';
import 'package:food_ninga/features/onboarding_page/model/onboarding_model.dart';

import '../../../../../constant/text_manger.dart';

class ResturantCardWidget extends StatelessWidget {
  const ResturantCardWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final item = items[index];
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 184,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: theme.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(item.image),
          const SizedBox(
            height: 17,
          ),
          Text(
            item.titel,
            style: TextManger.textstyle15Bold.copyWith(color: theme.hintColor),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.subTitel,
            style: TextManger.textStyle13Book.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

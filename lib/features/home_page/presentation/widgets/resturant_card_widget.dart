import 'package:flutter/material.dart';
import '../../data/model/nearest_restaurant_model.dart';

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
    final item = restaurantList[index];
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
          Image.asset(item.imageCard),
          const SizedBox(
            height: 17,
          ),
          Text(
            item.titelText,
            style: TextManger.textstyle15Bold.copyWith(color: theme.hintColor),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.supTitel,
            style: TextManger.textStyle13Book.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

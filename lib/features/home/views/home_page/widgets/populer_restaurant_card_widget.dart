import 'package:flutter/material.dart';
import 'package:food_ninga/features/home/views/home_page/data/model/populer_restaurant_card_model.dart';

import '../../../../../constant/text_manger.dart';

class PopulerRestaurantCardWidget extends StatelessWidget {
  final int index;

  const PopulerRestaurantCardWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final restaurantCardItem = populerRestaurantCardModel[index];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(restaurantCardItem.imageCard),
        const SizedBox(
          height: 17,
        ),
        Text(
          restaurantCardItem.titelText,
          style: TextManger.textstyle15Bold.copyWith(color: theme.hintColor),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          restaurantCardItem.titelText,
          style: TextManger.textStyle13Book.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

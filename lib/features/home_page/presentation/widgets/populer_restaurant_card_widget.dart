import 'package:flutter/material.dart';
import '../../data/model/populer_restaurant_card_model.dart';

import '../../../../../constant/text_manger.dart';

class PopulerRestaurantCardWidget extends StatelessWidget {
  final int index;
  final double right;
  const PopulerRestaurantCardWidget({
    super.key,
    required this.index,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final restaurantCardItem = populerRestaurantCardModel[index];
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: Column(
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
      ),
    );
  }
}

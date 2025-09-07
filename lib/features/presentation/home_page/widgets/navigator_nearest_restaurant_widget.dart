import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import 'nearest_restaurant.dart';

class NavigatorNearestRestaurantWidget extends StatelessWidget {
  const NavigatorNearestRestaurantWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Nearest Restaurant',
            style: AppText.textstyle15Bold,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ExploreRestaurantScreen(),
              ),
            ),
            child: Text(
              'View More',
              style: AppText.textStyle12Book.copyWith(
                color: AppColors.kOrangeColor,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.kOrangeColor,
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

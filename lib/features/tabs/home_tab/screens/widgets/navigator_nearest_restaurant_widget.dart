import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manger.dart';
import '../../../../../core/utils/text_manger.dart';
import '../explore_restaurant_screen.dart';

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
            style: TextManger.textstyle15Bold,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ExploreRestaurantScreen(),
              ),
            ),
            child: Text(
              'View More',
              style: TextManger.textStyle12Book.copyWith(
                color: ColorManger.kOrangeColor,
                decoration: TextDecoration.underline,
                decorationColor: ColorManger.kOrangeColor,
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

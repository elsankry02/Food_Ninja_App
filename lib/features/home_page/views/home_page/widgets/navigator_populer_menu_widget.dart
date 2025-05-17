import 'package:flutter/material.dart';

import '../../../../../constant/color_manger.dart';
import '../../../../../constant/text_manger.dart';
import '../view/popular_menu_screen.dart';

class NavigatorPopulerMenuWidget extends StatelessWidget {
  const NavigatorPopulerMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Popular Menu',
            style: TextManger.textstyle15Bold,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PopularMenuScreen(),
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

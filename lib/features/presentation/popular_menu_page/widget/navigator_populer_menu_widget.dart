import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../view/popular_menu_page.dart';

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
            style: AppText.textstyle15Bold,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PopularMenuPage(),
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

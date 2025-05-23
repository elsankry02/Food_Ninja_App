import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant/color_manger.dart';
import '../../../../../constant/text_manger.dart';
import '../widgets/populer_card_menu_widget.dart';
import 'home_tab_appbar.dart';

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTabAppBar(),
          Container(
            margin: const EdgeInsets.only(left: 25),
            height: 44,
            width: 92,
            decoration: BoxDecoration(
              color: theme.focusColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Soup',
                  style: TextManger.textStyle12Medium.copyWith(
                    color: ColorManger.kBrownColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset('assets/svg/Icon_Close.svg'),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 31),
            child: Text(
              'Popular Menu',
              style: TextManger.textstyle15Bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: double.infinity,
            child: PopularCardMenuWidget(
              imageCard: 'assets/images/Herbal_Pancake.png',
              titelText: 'Herbal Pancake',
              supTitel: 'Warung Herbal',
              price: r'$7',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: double.infinity,
            child: PopularCardMenuWidget(
              imageCard: 'assets/images/Fruit_Salad.png',
              titelText: 'Fruit Salad',
              supTitel: 'Wijie Resto',
              price: r'$5',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: double.infinity,
            child: PopularCardMenuWidget(
              imageCard: 'assets/images/Green_Noddle.png',
              titelText: 'Green Noddle',
              supTitel: 'Noodle Home',
              price: r'$15',
            ),
          ),
        ],
      ),
    );
  }
}

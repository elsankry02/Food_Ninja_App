import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant/color_manger.dart';
import '../../../../../constant/text_manger.dart';
import 'home_tab_appbar.dart';

class ExploreRestaurantScreen extends StatelessWidget {
  const ExploreRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTabAppBar(),
          Row(
            children: [
              Container(
                height: 44,
                width: 112,
                decoration: BoxDecoration(
                  color: theme.focusColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '>10 Km',
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
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
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
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 31),
            child: Text(
              'Nearest Restaurant',
              style: TextManger.textstyle15Bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Expanded(
          //   child: ListView(
          //     children: const [
          //       PopulerRestaurantCardWidget(),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       PopulerRestaurantCardWidget(),
          //       SizedBox(
          //         height: 20,
          //       ),
          //       PopulerRestaurantCardWidget(),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

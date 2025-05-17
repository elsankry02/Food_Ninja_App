import 'package:flutter/material.dart';

import '../../../../constant/text_manger.dart';
import 'view/detail_menu.dart';
import 'view/detail_product.dart';
import 'view/profile_scroll_mode.dart';
import 'widgets/massage_profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/PatternTopRight.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  'Profile',
                  style: TextManger.textstyle25Bold,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileScrollMode(),
                    ),
                  ),
                  child: const MassageProfileWidget(
                    image: 'assets/images/Photo.png',
                    titel: 'Profile',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Detailproduct(),
                    ),
                  ),
                  child: const MassageProfileWidget(
                    image: 'assets/images/Photo_Restaurant.png',
                    titel: 'Detail product',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DetailMenu(),
                    ),
                  ),
                  child: const MassageProfileWidget(
                    image: 'assets/images/Photo_Menu.png',
                    titel: 'Detailmenu',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

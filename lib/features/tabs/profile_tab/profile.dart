import 'package:flutter/material.dart';
import '../../../core/utils/text_manger.dart';
import 'screens/detail_menu_screen.dart';
import 'screens/detail_product_screen.dart';
import 'screens/profile_scroll_mode.dart';
import 'screens/widgets/massage_profile_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                    height: 38,
                  ),
                  const Text(
                    'Profile',
                    style: TextManger.textstyle25Bold,
                  ),
                  const SizedBox(
                    height: 40,
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
                        builder: (context) => const DetailproductScreen(),
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
                        builder: (context) => const DetailMenuScreen(),
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
      ),
    );
  }
}

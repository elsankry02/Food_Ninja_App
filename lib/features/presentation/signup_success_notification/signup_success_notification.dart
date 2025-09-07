import 'package:flutter/material.dart';

import '../../../core/components/custom_button_widget.dart';
import '../../../core/components/custom_success_notification_widget.dart';
import '../../../core/constant/app_text.dart';
import '../navbar_page/navbar_page.dart';

class SignupSuccessNotificationPage extends StatelessWidget {
  const SignupSuccessNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomSuccessNotificationWidget(),
          const SizedBox(
            height: 33,
          ),
          const Text(
            'Congrats!',
            style: AppText.textstyle30Bold,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Your Profile Is Ready To Use',
            style: AppText.textstyle22Bold,
          ),
          const SizedBox(
            height: 192,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NavBarPage(),
              ),
            ),
            child: const UnconstrainedBox(
              child: CustomButtonWidget(
                textButton: 'Try Order',
                horizontal: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

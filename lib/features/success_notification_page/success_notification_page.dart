import 'package:flutter/material.dart';

import '../../../components/custom_button_widget.dart';
import '../../../components/custom_success_notification_widget.dart';
import '../../../constant/text_manger.dart';
import '../sign_in_page/sign_in_page.dart';

class SuccessNotificationPage extends StatelessWidget {
  const SuccessNotificationPage({super.key});

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
            style: TextManger.textstyle30Bold,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Password reset succesful',
            style: TextManger.textstyle22Bold,
          ),
          const SizedBox(
            height: 192,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignInPage(),
              ),
            ),
            child: const CustomButtonWidget(
              textButton: 'Back',
              horizontal: 60,
            ),
          ),
        ],
      ),
    );
  }
}

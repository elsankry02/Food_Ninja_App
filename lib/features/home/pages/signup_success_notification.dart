import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/text_manger.dart';
import '../../../core/utils/widget/custom_button_widget.dart';
import '../../tabs/salomon_nav_bar.dart';
import 'widget/success_notification_widget.dart';

class SignupSuccessNotificationPage extends StatelessWidget {
  const SignupSuccessNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: Column(
        children: [
          const SuccessNotificationWidget(),
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
            'Your Profile Is Ready To Use',
            style: TextManger.textstyle22Bold,
          ),
          const SizedBox(
            height: 192,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SalomonNavBar(),
              ),
            ),
            child: const CustomButtonWidget(textButton: 'Try Order'),
          ),
        ],
      ),
    );
  }
}

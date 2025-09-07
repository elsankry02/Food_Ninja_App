import 'package:flutter/material.dart';

import '../../../core/components/custom_button_widget.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../verification_code_page/verification_code_page.dart';
import 'widget/via_massage.dart';

class ViaMethodPage extends StatelessWidget {
  const ViaMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
              titel: 'Forgot password?',
              supTitel:
                  'Select which contact details should we \nuse to reset your password'),
          const SizedBox(
            height: 20,
          ),
          const ViaMassage(
            imageVia: 'assets/svg/Message.svg',
            textVia: 'Via sms:',
            subVia: '4235',
          ),
          const SizedBox(
            height: 20,
          ),
          const ViaMassage(
            imageVia: 'assets/svg/Email.svg',
            textVia: 'Via email:',
            subVia: '@gmail.com',
          ),
          const SizedBox(
            height: 269,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const VerificationCodePage(),
            )),
            child: const CustomButtonWidget(
              textButton: 'Next',
              horizontal: 60,
            ),
          ),
        ],
      ),
    );
  }
}

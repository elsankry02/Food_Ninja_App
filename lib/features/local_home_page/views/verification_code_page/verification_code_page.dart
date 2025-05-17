import 'package:flutter/material.dart';
import 'package:food_ninga/features/local_home_page/views/verification_code_page/widget/verification_code_widget.dart';

import '../../../../components/custom_button_widget.dart';
import '../../../../components/custom_top_appbar_widget.dart';
import '../password_page/password_page.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Enter 4-digit\nVerification code',
            supTitel:
                'Code send to +0120430**** . This code will\nexpired in 01:30',
          ),
          const SizedBox(
            height: 38,
          ),
          const VerificationCodeWidget(),
          const SizedBox(
            height: 322,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PasswordPage(),
            )),
            child: const CustomButtonWidget(textButton: 'Next'),
          ),
        ],
      ),
    );
  }
}

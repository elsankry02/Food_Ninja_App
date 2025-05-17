import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/utils/text_manger.dart';
import '../../../core/utils/widget/custom_button_widget.dart';
import 'password_page/password_page.dart';
import 'widget/top_appbar_widget.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          const TopAppbarPopWidget(
            titel: 'Enter 4-digit\nVerification code',
            supTitel:
                'Code send to +0120430**** . This code will\nexpired in 01:30',
          ),
          const SizedBox(
            height: 38,
          ),
          Container(
            height: 103,
            width: 347,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  style: TextManger.textstyle33Medium
                      .copyWith(color: theme.hintColor),
                  '1',
                ),
                Text(
                  style: TextManger.textstyle33Medium
                      .copyWith(color: theme.hintColor),
                  '9',
                ),
                Text(
                  style: TextManger.textstyle33Medium
                      .copyWith(color: theme.hintColor),
                  '2',
                ),
                Text(
                  style: TextManger.textstyle33Medium
                      .copyWith(color: theme.hintColor),
                  '3',
                ),
              ],
            ),
          ),
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

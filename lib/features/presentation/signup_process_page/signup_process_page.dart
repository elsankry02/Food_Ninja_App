import 'package:flutter/material.dart';

import '../../../core/components/custom_button_widget.dart';
import '../../../core/components/custom_text_field_widget.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../payment_method_page/view/payment_method_page.dart';

class SignupProcessPage extends StatelessWidget {
  const SignupProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Fill in your bio to get \nstarted',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFieldWidget(hintText: 'First Name'),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFieldWidget(hintText: 'Last Name'),
          const SizedBox(
            height: 20,
          ),
          const CustomTextFieldWidget(hintText: 'Mobile Number'),
          const SizedBox(
            height: 220,
          ),
          Column(
            children: [
              GestureDetector(
                  onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PaymentMethodPage(),
                        ),
                      ),
                  child: const UnconstrainedBox(
                    child: CustomButtonWidget(
                      textButton: 'Next',
                      horizontal: 60,
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

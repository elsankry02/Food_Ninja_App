import 'package:flutter/material.dart';

import '../../../../components/custom_button_widget.dart';
import '../../../../components/custom_text_field_widget.dart';
import '../../../../constant/text_manger.dart';
import '../signup_success_notification/signup_success_notification.dart';
import '../via_method_page/via_method_page.dart';
import 'widget/logo_login_widget.dart';
import 'widget/social_connection_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const LogoLoginWidget(
            textSign: 'Login To Your Account',
          ),
          const SizedBox(
            height: 40,
          ),
          const CustomTextFieldWidget(
            hintText: 'Email',
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomTextFieldWidget(
            hintText: 'Password',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Or Continue With',
            style: TextManger.textstyle14Bold,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialConnectionWidget(
                textSocial: 'Facebook',
                imageSocial: 'assets/svg/facebook.svg',
              ),
              SizedBox(
                width: 21,
              ),
              SocialConnectionWidget(
                textSocial: 'Google',
                imageSocial: 'assets/svg/google.svg',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ViaMethodPage(),
              ),
            ),
            child: const Text(
              textAlign: TextAlign.center,
              "Forgot Your Password?",
              style: TextManger.textStyle12Thickness,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 157,
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SignupSuccessNotificationPage(),
                ),
              ),
              child: const UnconstrainedBox(
                child: CustomButtonWidget(
                  textButton: 'Login',
                  horizontal: 60,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

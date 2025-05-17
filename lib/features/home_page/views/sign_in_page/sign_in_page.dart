import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/utils/text_manger.dart';
import '../../../../core/utils/widget/custom_button_widget.dart';
import '../signup_success_notification.dart';
import '../via_method_page.dart';
import '../widget/container_social_widget.dart';
import '../widget/logo_login_widget.dart';
import '../widget/text_field_login_widget.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
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
          const TextFieldLoginWidget(
            hintText: 'Email',
          ),
          const SizedBox(
            height: 12,
          ),
          const TextFieldLoginWidget(
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
              CountainerSocialWidget(
                textSocial: 'Facebook',
                imageSocial: 'assets/svg/facebook.svg',
              ),
              SizedBox(
                width: 21,
              ),
              CountainerSocialWidget(
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
                child: CustomButtonWidget(textButton: 'Login'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

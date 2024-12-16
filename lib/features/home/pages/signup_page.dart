import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/color_manger.dart';
import '../../../core/utils/text_manger.dart';
import '../../../core/utils/widget/custom_button_widget.dart';
import 'signin_page.dart';
import 'signup_process_page.dart';
import 'widget/check_circler_sharp.dart';
import 'widget/logo_login_widget.dart';
import 'widget/text_field_signup_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const LogoLoginWidget(
            textSign: 'Sign Up For Free',
          ),
          const SizedBox(
            height: 40,
          ),
          //! User name
          const TextFieldSignInWidget(
            labelText: 'Anamwp . . |',
            assetIcon: "assets/svg/Profile.svg",
          ),
          const SizedBox(
            height: 12,
          ),
          //! email
          const TextFieldSignInWidget(
            labelText: 'Email',
            assetIcon: 'assets/svg/Message.svg',
          ),
          const SizedBox(
            height: 12,
          ),
          //! Password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              obscureText: isPassword ? false : true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextManger.textstyle14Regular,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 17,
                  horizontal: 20,
                ),
                prefixIcon: UnconstrainedBox(
                  child: SvgPicture.asset('assets/svg/Lock.svg',
                      height: 24, width: 24),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  child: Icon(
                    isPassword ? Icons.visibility : Icons.visibility_off,
                    color: isPassword
                        ? ColorManger.kPrimaryColor
                        : const Color.fromARGB(255, 201, 195, 195),
                  ),
                ),
                filled: true,
                fillColor: theme.primaryColor,
                enabledBorder: signupBorder(theme.primaryColor),
                focusedBorder: signupBorder(theme.primaryColor),
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          const CheckCirclerSharp(
            textCheck: 'Keep Me Signed In',
          ),
          const SizedBox(
            height: 12,
          ),
          const CheckCirclerSharp(
            textCheck: 'Email Me About Special Pricing',
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              //! bottom
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupProcessPage(),
                  ),
                ),
                child: const CustomButtonWidget(textButton: 'Create Account'),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SigninPage(),
                  ),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "already have an account?",
                  style: TextManger.textStyle12Thickness,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  OutlineInputBorder signupBorder(Color theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: theme,
      ),
    );
  }
}

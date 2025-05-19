import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_button_widget.dart';
import '../../../components/custom_text_field.dart';
import '../../../constant/color_manger.dart';
import '../../../constant/text_manger.dart';
import '../sign_in_page/sign_in_page.dart';
import '../sign_in_page/widget/logo_login_widget.dart';
import '../signup_process_page/signup_process_page.dart';
import 'widget/circular_check_mark_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
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
          const CustomTextField(
            labelText: 'Anamwp . . |',
            assetIcon: "assets/svg/Profile.svg",
          ),
          const SizedBox(
            height: 12,
          ),
          //! email
          const CustomTextField(
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
          const CircularCheckMarkWidget(
            textCheck: 'Keep Me Signed In',
          ),
          const SizedBox(
            height: 12,
          ),
          const CircularCheckMarkWidget(
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
                child: const UnconstrainedBox(
                  child: CustomButtonWidget(
                    textButton: 'Create Account',
                    horizontal: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInPage(),
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

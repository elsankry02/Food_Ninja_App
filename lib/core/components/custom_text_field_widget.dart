import 'package:flutter/material.dart';

import '../constant/app_text.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppText.textstyle14Regular,
          contentPadding: const EdgeInsets.only(left: 28, top: 21, bottom: 22),
          filled: true,
          fillColor: theme.primaryColor,
          focusedBorder: borderTextField(theme.primaryColor),
          enabledBorder: borderTextField(theme.primaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder borderTextField(Color theme) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: theme,
    ),
    borderRadius: BorderRadius.circular(15),
  );
}

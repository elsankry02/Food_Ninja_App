import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../../notifiaction_page/view/notifiaction_page.dart';

class TextFieldSearchScreenWidget extends StatelessWidget {
  const TextFieldSearchScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31, right: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your \nFavorite Food',
                    style: AppText.textstyle25Bold
                        .copyWith(color: theme.hintColor),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Notifiactionpage(),
                      ),
                    ),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: UnconstrainedBox(
                        child: SvgPicture.asset(
                            'assets/svg/Icon_Notifiaction.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                style: const TextStyle(color: AppColors.kBrownColor),
                cursorColor: AppColors.kBrownColor,
                decoration: InputDecoration(
                  hintText: 'What do you want to order?',
                  hintStyle: AppText.textStyle12Medium.copyWith(
                      color: const Color.fromARGB(255, 247, 197, 166)),
                  prefixIcon: UnconstrainedBox(
                    child: SvgPicture.asset('assets/svg/Icon_Search.svg'),
                  ),
                  filled: true,
                  fillColor: theme.focusColor,
                  focusedBorder: outLineInputBorder(theme: theme.focusColor),
                  enabledBorder: outLineInputBorder(theme: theme.focusColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  OutlineInputBorder outLineInputBorder({required Color theme}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: theme,
      ),
    );
  }
}

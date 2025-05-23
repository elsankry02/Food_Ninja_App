import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant/text_manger.dart';

class NotifiactionCardWidget extends StatelessWidget {
  final String image;
  final String titel;
  final String subTitel;
  const NotifiactionCardWidget(
      {super.key,
      required this.image,
      required this.titel,
      required this.subTitel});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 105,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: theme.primaryColor,
        ),
        child: Row(
          children: [
            SvgPicture.asset(image),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titel,
                  style: TextManger.textstyle15Medium
                      .copyWith(color: theme.hintColor),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  subTitel,
                  style: TextManger.textstyle14Regular,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

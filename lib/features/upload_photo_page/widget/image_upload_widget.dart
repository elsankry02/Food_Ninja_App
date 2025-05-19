import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant/text_manger.dart';

class ImageUploadWidget extends StatelessWidget {
  const ImageUploadWidget({
    super.key,
    required this.upLoadPhoto,
    required this.textStyelPhoto,
  });
  final String upLoadPhoto;
  final String textStyelPhoto;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        height: 130,
        width: 325,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(upLoadPhoto),
            const SizedBox(
              height: 9,
            ),
            Text(
              textStyelPhoto,
              style: TextManger.textstyle14Bold.copyWith(
                color: theme.hintColor,
              ),
            ),
          ],
        )));
  }
}

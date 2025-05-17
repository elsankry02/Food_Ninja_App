import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/text_manger.dart';
import '../../../core/utils/widget/custom_button_widget.dart';
import 'set_location_page/set_location_page.dart';
import 'upload_preview_page.dart';
import 'widget/top_appbar_widget.dart';

class UpLoadPhotoPage extends StatelessWidget {
  const UpLoadPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      body: Column(
        children: [
          const TopAppbarPopWidget(
            titel: 'Upload Your Photo\nProfile',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UploadPreviewPage(),
              ),
            ),
            child: const ContainerLoadPhoto(
              upLoadPhoto: 'assets/svg/Gallery.svg',
              textStyelPhoto: 'From Gallery',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UploadPreviewPage(),
              ),
            ),
            child: const ContainerLoadPhoto(
              upLoadPhoto: 'assets/svg/camera.svg',
              textStyelPhoto: 'Take Photo',
            ),
          ),
          const SizedBox(
            height: 190,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SetLocationPage(),
              ),
            ),
            child: const CustomButtonWidget(textButton: 'Next'),
          ),
        ],
      ),
    );
  }
}

class ContainerLoadPhoto extends StatelessWidget {
  const ContainerLoadPhoto({
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

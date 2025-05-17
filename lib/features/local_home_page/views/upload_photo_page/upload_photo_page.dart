import 'package:flutter/material.dart';
import 'package:food_ninga/features/local_home_page/views/upload_photo_page/widget/image_upload_widget.dart';

import '../../../../components/custom_button_widget.dart';
import '../../../../components/custom_top_appbar_widget.dart';
import '../set_location_page/set_location_page.dart';
import '../upload_preview_page/upload_preview_page.dart';

class UpLoadPhotoPage extends StatelessWidget {
  const UpLoadPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
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
            child: const ImageUploadWidget(
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
            child: const ImageUploadWidget(
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

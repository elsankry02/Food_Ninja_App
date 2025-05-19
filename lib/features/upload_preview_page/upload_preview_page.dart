import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/custom_button_widget.dart';
import '../../../components/custom_top_appbar_widget.dart';
import '../set_location_page/set_location_page.dart';

class UploadPreviewPage extends StatelessWidget {
  const UploadPreviewPage({super.key});

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
            height: 60,
          ),
          Stack(
            children: [
              Image.asset('assets/images/Photo.png'),
              Positioned(
                right: 15,
                top: 30,
                child: SvgPicture.asset('assets/svg/Close Icon.svg'),
              ),
            ],
          ),
          const SizedBox(
            height: 170,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SetLocationPage(),
            )),
            child: const CustomButtonWidget(
              textButton: 'Next',
              horizontal: 60,
            ),
          ),
        ],
      ),
    );
  }
}

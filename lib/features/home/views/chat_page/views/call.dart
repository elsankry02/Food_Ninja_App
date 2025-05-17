import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/components/custom_chat_call_widget.dart';
import 'package:food_ninga/constant/text_manger.dart';
import 'package:food_ninga/features/home/views/chat_page/views/finish_ordar.dart';

import '../../../../../constant/image_manger.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                ImageManger.kPattern,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 250),
                //! Custom ChatCall Widget
                child: CustomChatCallWidget(
                  image: ImageManger.kDeliveryMan,
                  titel: 'Delivery Man',
                  subtitel: '15.23 Min',
                  style: TextManger.textstyle19Regular,
                  height: 177,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: SvgPicture.asset(isSelected
                    ? 'assets/svg/Speaker_Icon.svg'
                    : 'assets/svg/Mute_Icon.svg'),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FinishOrdar(),
                  ),
                ),
                child: SvgPicture.asset('assets/svg/Close_Icon2.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

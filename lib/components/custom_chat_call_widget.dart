import 'package:flutter/material.dart';
import '../constant/text_manger.dart';

class CustomChatCallWidget extends StatelessWidget {
  const CustomChatCallWidget(
      {super.key,
      required this.image,
      required this.titel,
      required this.subtitel,
      this.height,
      s,
      this.style});
  final String image;
  final String titel;
  final String subtitel;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: [
          Center(
            child: Image.asset(
              height: 150,
              image,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            titel,
            textAlign: TextAlign.center,
            style: TextManger.textstyle25Bold,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            subtitel,
            textAlign: TextAlign.center,
            style: style,
          ),
          SizedBox(
            height: height,
          ),
        ],
      ),
    );
  }
}

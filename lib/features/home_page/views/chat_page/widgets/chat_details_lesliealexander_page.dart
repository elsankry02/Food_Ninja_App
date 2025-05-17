import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant/assets_manger.dart';
import '../../../../../constant/color_manger.dart';
import '../../../../../constant/text_manger.dart';
import 'call_ranging.dart';

class ChatDetailsLesliealexanderPage extends StatelessWidget {
  const ChatDetailsLesliealexanderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              AssetsManger.kPattern,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 38,
                  ),
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Chat',
                    style: TextManger.textstyle25Bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    width: double.infinity,
                    height: 93,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/Assel.png',
                          width: 62,
                          height: 62,
                        ),
                        const SizedBox(
                          width: 17.5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Leslie Alexander',
                              style: TextManger.textstyle15Medium.copyWith(
                                color: theme.hintColor,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/svg/Ellipse_184.svg'),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Online',
                                  style: TextManger.textstyle14Regular,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 81,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const CallRanging(),
                            ),
                          ),
                          child: SvgPicture.asset('assets/svg/Call_Logo.svg'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ChatWidget(
                    titel: 'Just to order',
                    textColor: theme.hintColor,
                    containerColor: theme.primaryColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ChatWidget(
                        titel: 'Okay, for what level of spiciness?',
                        textColor: Colors.white,
                        containerColor: ColorManger.kPrimaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ChatWidget(
                    titel: 'Okay, wait a minute 👍',
                    textColor: theme.hintColor,
                    containerColor: theme.primaryColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ChatWidget(
                        titel: "Okay I'm waiting  👍",
                        textColor: Colors.white,
                        containerColor: ColorManger.kPrimaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 190,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: 355,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Okay I'm waiting  👍",
                          style: TextManger.textstyle14Regular
                              .copyWith(color: theme.hintColor),
                        ),
                        SvgPicture.asset('assets/svg/Icon_Send.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  final Color textColor;
  final Color containerColor;
  final String titel;
  const ChatWidget(
      {super.key,
      required this.textColor,
      required this.containerColor,
      required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 29, bottom: 15, top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: containerColor,
      ),
      child: Text(
        titel,
        style: TextManger.textStyle14Book.copyWith(color: textColor),
      ),
    );
  }
}

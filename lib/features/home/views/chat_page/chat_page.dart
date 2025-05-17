import 'package:flutter/material.dart';

import '../../../../constant/text_manger.dart';
import 'views/caht_details_qassem_page.dart';
import 'views/caht_details_zain_page.dart';
import 'views/chat_details_lillian_page.dart';
import 'views/massage_widget.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/PatternTopRight.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'Chat',
                      style: TextManger.textstyle25Bold,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const CahtDetailsDianneRussellPage(),
                        ),
                      ),
                      child: const MassageChatWidget(
                        image: 'assets/images/Zain.png',
                        titel: 'Zain',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CahtDetailsQassemPage(),
                        ),
                      ),
                      child: const MassageChatWidget(
                        image: 'assets/images/Qassem.png',
                        titel: 'Qassem',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const ChatDetailsLesliealexanderPage(),
                        ),
                      ),
                      child: const MassageChatWidget(
                        image: 'assets/images/Lillian.png',
                        titel: 'Lillian',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

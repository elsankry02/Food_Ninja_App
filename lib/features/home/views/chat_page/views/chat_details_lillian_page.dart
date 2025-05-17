import 'package:flutter/material.dart';
import 'package:food_ninga/features/home/views/chat_page/views/caht_details_zain_page.dart';
import 'package:food_ninga/features/home/views/chat_page/views/call_ranging.dart';

class ChatDetailsLesliealexanderPage extends StatelessWidget {
  const ChatDetailsLesliealexanderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomChatDetailsWidget(
        titelPerson: 'Lillian',
        assetNamePerson: 'assets/images/Lillian.png',
        onTapCall: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CallRanging()));
        },
      ),
    );
  }
}

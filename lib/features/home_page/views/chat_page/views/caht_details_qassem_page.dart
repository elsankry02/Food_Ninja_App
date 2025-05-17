import 'package:flutter/material.dart';
import 'package:food_ninga/features/home_page/views/chat_page/views/caht_details_zain_page.dart';

import 'call_ranging.dart';

class CahtDetailsGuyHawkinsPage extends StatelessWidget {
  const CahtDetailsGuyHawkinsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomChatDetailsWidget(
        titelPerson: 'Qassem',
        assetNamePerson: 'assets/images/Yasser.png',
        onTapCall: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CallRanging()));
        },
      ),
    );
  }
}

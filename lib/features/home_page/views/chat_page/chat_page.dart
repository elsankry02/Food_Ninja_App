import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../constant/text_manger.dart';
import 'widgets/caht_details_anamwp_page.dart';
import 'widgets/caht_details_guyhawkins_page.dart';
import 'widgets/chat_details_lesliealexander_page.dart';
import 'widgets/massage_widget.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: Stack(
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
                  height: 38,
                ),
                const Text(
                  'Chat',
                  style: TextManger.textstyle25Bold,
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CahtDetailsAnamwpPage(),
                    ),
                  ),
                  child: const MassageChatWidget(
                    image: 'assets/images/Dianne_Russell.png',
                    titel: 'Anamwp',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CahtDetailsGuyHawkinsPage(),
                    ),
                  ),
                  child: const MassageChatWidget(
                    image: 'assets/images/Yasser.png',
                    titel: 'Guy Hawkins',
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
                    image: 'assets/images/Assel.png',
                    titel: 'Leslie Alexander',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

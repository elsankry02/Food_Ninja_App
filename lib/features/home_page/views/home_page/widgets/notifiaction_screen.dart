import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../components/custom_main_appbar_widget.dart';
import 'notification_card_widget.dart';

class NotifiactionScreen extends StatelessWidget {
  const NotifiactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return const Scaffold(
      body: Column(
        children: [
          MainAppBarWidget(
            titelAppBarPage: 'Notifiaction',
          ),
          NotifiactionCardWidget(
            image: 'assets/svg/Success_Icon.svg',
            titel: 'Your order has been taken by\n the driver',
            subTitel: 'Recently',
          ),
          SizedBox(
            height: 20,
          ),
          NotifiactionCardWidget(
            image: 'assets/svg/Top_Up_Icon.svg',
            titel: r'Topup for $100 was successful',
            subTitel: '10.00 Am',
          ),
          SizedBox(
            height: 20,
          ),
          NotifiactionCardWidget(
            image: 'assets/svg/Cancel_Icon.svg',
            titel: 'Your order has been canceled',
            subTitel: '22 Juny 2021',
          ),
        ],
      ),
    );
  }
}

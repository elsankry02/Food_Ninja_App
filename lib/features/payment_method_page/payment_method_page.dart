import 'package:flutter/material.dart';
import 'widget/payment_container_widget.dart';

import '../../../components/custom_button_widget.dart';
import '../../../components/custom_top_appbar_widget.dart';
import '../upload_photo_page/upload_photo_page.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Payment Method',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          const SizedBox(
            height: 47,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/visa.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/paypal.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/Payoneer.svg',
          ),
          const SizedBox(
            height: 190,
          ),
          GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UpLoadPhotoPage(),
                  )),
              child: const UnconstrainedBox(
                child: CustomButtonWidget(
                  textButton: 'Next',
                  horizontal: 60,
                ),
              )),
        ],
      ),
    );
  }
}

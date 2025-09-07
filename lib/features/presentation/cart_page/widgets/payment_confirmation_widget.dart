import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import 'payment_cart_screen.dart';

class PaymentConfirmationWidget extends StatelessWidget {
  const PaymentConfirmationWidget({super.key, required this.style14Medium});

  final TextStyle style14Medium;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 22, top: 20),
      height: 206,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/Buttom_Sheet_Pattern.png'),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total', style: style14Medium),
              Text(r'120 $', style: style14Medium),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Charge', style: style14Medium),
              Text(r'10 $', style: style14Medium),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount', style: style14Medium),
              Text(r'20 $', style: style14Medium),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: AppText.textstyle19Bold
                    .copyWith(color: AppColors.kMaterialWhiteColor),
              ),
              Text(
                r'150$',
                style: AppText.textstyle19Bold
                    .copyWith(color: AppColors.kMaterialWhiteColor),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PaymentCartScreen(),
              ),
            ),
            child: Container(
              width: 325,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.kMaterialWhiteColor,
              ),
              child: Center(
                child: Text(
                  'Place My Order',
                  style: AppText.textstyle14Bold
                      .copyWith(color: AppColors.kPrimaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_ninga/components/custom_button_widget.dart';
import 'package:food_ninga/constant/color_manger.dart';
import 'package:food_ninga/constant/text_manger.dart';
import 'package:food_ninga/features/home_page/views/cart_page/widgets/payment_confirmation_widget.dart';

class ShowModalBottomSheetWidget extends StatelessWidget {
  const ShowModalBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            backgroundColor: ColorManger.kPrimaryColor,
            isDismissible: false,
            context: context,
            builder: (context) => PaymentConfirmationWidget(
              style14Medium: TextManger.textStyle14Medium
                  .copyWith(color: ColorManger.kMaterialWhiteColor),
            ),
          );
        },
        child: const CustomButtonWidget(textButton: r'Go to Checkout $'),
      ),
    );
  }
}

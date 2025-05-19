import 'package:flutter/material.dart';
import '../../../components/custom_button_widget.dart';
import '../../../constant/color_manger.dart';
import '../../../constant/text_manger.dart';
import 'payment_confirmation_widget.dart';

class ShowModalBottomSheetWidget extends StatelessWidget {
  const ShowModalBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: const CustomButtonWidget(
        textButton: r'Go to Checkout $',
        horizontal: 60,
      ),
    );
  }
}

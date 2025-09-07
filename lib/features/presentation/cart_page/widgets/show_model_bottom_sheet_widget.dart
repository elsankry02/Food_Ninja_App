import 'package:flutter/material.dart';
import '../../../../core/components/custom_button_widget.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
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
          backgroundColor: AppColors.kPrimaryColor,
          isDismissible: false,
          context: context,
          builder: (context) => PaymentConfirmationWidget(
            style14Medium: AppText.textStyle14Medium
                .copyWith(color: AppColors.kMaterialWhiteColor),
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

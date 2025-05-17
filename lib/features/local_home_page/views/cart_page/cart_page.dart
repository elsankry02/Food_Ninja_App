import 'package:flutter/material.dart';
import 'package:food_ninga/components/custom_primary_appbar.dart';
import 'package:food_ninga/features/local_home_page/views/cart_page/widgets/show_model_bottom_sheet_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomPrimaryAppBar(
              titel: 'Cart',
            ),
            ShowModalBottomSheetWidget(),
          ],
        ),
      ),
    );
  }
}

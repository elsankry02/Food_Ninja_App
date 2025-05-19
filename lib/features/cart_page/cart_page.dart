import 'package:flutter/material.dart';
import '../../constant/text_manger.dart';
import 'widgets/show_model_bottom_sheet_widget.dart';
import '../home_page/data/model/populer_restaurant_card_model.dart';
import '../home_page/presentation/widgets/populer_restaurant_card_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/PatternTopRight.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Cart',
                      style: TextManger.textstyle25Bold
                          .copyWith(color: theme.hintColor),
                    ),
                    SizedBox(
                      height: 700,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemCount: populerRestaurantCardModel.length,
                        itemBuilder: (context, index) {
                          return PopulerRestaurantCardWidget(
                            index: index,
                            right: 0,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShowModalBottomSheetWidget(),
          ),
        ],
      ),
    );
  }
}

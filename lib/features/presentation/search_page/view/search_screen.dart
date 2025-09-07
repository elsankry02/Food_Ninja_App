import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../widget/textfield_search_screen_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const TextFieldSearchScreenWidget(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Tybe',
                style: AppText.textstyle15Bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  SearchResults(
                    result: 'Restaurant',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SearchResults(
                    result: 'Menu',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Location',
                style: AppText.textstyle15Bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  SearchResults(result: '1 Km'),
                  SizedBox(
                    width: 10,
                  ),
                  SearchResults(result: '>10 Km'),
                  SizedBox(
                    width: 10,
                  ),
                  SearchResults(result: '<10 Km'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Food',
                style: AppText.textstyle15Bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      SearchResults(result: 'Cake'),
                      SizedBox(
                        width: 10,
                      ),
                      SearchResults(result: 'Soup'),
                      SizedBox(
                        width: 10,
                      ),
                      SearchResults(result: 'Main Course'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SearchResults(result: 'Appetizer'),
                      SizedBox(
                        width: 10,
                      ),
                      SearchResults(result: 'Dessert'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Container(
                height: 57,
                width: 281,
                decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Center(
                  child: Text(
                    'Search',
                    style:
                        AppText.textstyle14Bold.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResults extends StatelessWidget {
  final String result;
  const SearchResults({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: theme.focusColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          result,
          style:
              AppText.textStyle12Medium.copyWith(color: AppColors.kBrownColor),
        ),
      ),
    );
  }
}

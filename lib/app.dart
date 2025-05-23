import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant/color_manger.dart';
import 'features/home_page/data/cubit/change_theme_cubit.dart';
import 'features/splash_page/splash_view.dart';

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangeThemeCubit>(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {
          final themeIsDark = state is ThemeIsDark ? state.isDark : false;
          final themeSaved = context.read<ChangeThemeCubit>().getTheme();

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light().copyWith(
                scaffoldBackgroundColor: ColorManger.kMaterialWhiteColor,
                cardColor: ColorManger.kMaterialWhiteColor,
                focusColor: ColorManger.kMaterialWhiteColor,
                primaryColor: ColorManger.kMaterialWhiteColor,
                hintColor: Colors.black),
            themeMode:
                themeSaved ?? themeIsDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.black,
              cardColor: Colors.grey,
              focusColor: ColorManger.kMaterialBlackColor,
              primaryColor: ColorManger.kMaterialBlackColor,
              hintColor: ColorManger.kMaterialWhiteColor,
            ),
            home: const SplashView(),
          );
        },
      ),
    );
  }
}

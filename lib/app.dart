import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constant/app_color.dart';
import 'features/data/cubit/change_theme_cubit.dart';
import 'features/presentation/splash_page/splash_view.dart';

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
                scaffoldBackgroundColor: AppColors.kMaterialWhiteColor,
                cardColor: AppColors.kMaterialWhiteColor,
                focusColor: AppColors.kMaterialWhiteColor,
                primaryColor: AppColors.kMaterialWhiteColor,
                hintColor: Colors.black),
            themeMode:
                themeSaved ?? themeIsDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Colors.black,
              cardColor: Colors.grey,
              focusColor: AppColors.kMaterialBlackColor,
              primaryColor: AppColors.kMaterialBlackColor,
              hintColor: AppColors.kMaterialWhiteColor,
            ),
            home: const SplashView(),
          );
        },
      ),
    );
  }
}

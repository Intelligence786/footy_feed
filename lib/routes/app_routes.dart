import 'package:flutter/material.dart';
import 'package:footy_feed/presentation/main_screen/main_screen.dart';

import '../data/models/news_model/news_model.dart';
import '../presentation/news_screen/news_screen.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/settings_screen/settings_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String mainScreen = '/main_screen';

  static const String settingsScreen = '/settings_page';

  static const String newsScreen = '/news_screen';

  static Map<String, WidgetBuilder> get routes =>
      {
        onboardingScreen: OnboardingScreen.builder,
        mainScreen: MainScreen.builder,
        newsScreen: (context) {
          final arguments =
          ModalRoute
              .of(context)!
              .settings
              .arguments as NewsModel;
          return NewsScreen.builder(context, arguments);

        },
        settingsScreen: SettingsScreen.builder,
      };
}

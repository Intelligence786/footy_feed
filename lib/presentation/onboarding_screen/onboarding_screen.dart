import 'dart:ui';

import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return OnboardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(context),
      body: Stack(
        children: [
          Positioned(
            width: 700.h,
            //left: 100,
            child: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              child: CustomImageView(
                fit: BoxFit.cover,
                imagePath: ImageConstant.imgOnboarding,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                color: Colors.blue.withOpacity(0.2),
              ),
            ),
          ),
          Container(
            width: SizeUtils.width,
            height: SizeUtils.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [
                  theme.colorScheme.primaryContainer,
                  theme.colorScheme.onErrorContainer
                ],
              ),
              // image: DecorationImage(
              //   image: AssetImage(
              //     ImageConstant.imgOnboarding,
              //   ),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 76.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(),
                  Container(
                    width: 333.h,
                    margin: EdgeInsets.only(right: 24.h),
                    child: Text(
                      'Dive into the football world with our app!',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineLarge!.copyWith(
                        height: 1.25,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 220.h,
                    child: Text(
                      'Track matches, read football news in one app!',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium!.copyWith(
                        height: 1.38,
                      ),
                    ),
                  ),
                  SizedBox(height: 54.v),
                  CustomElevatedButton(
                    text: 'Get started',
                    buttonTextStyle: theme.textTheme.titleMedium
                        ?.copyWith(color: theme.colorScheme.onErrorContainer),
                    buttonStyle: CustomButtonStyles.fillErrorContainer,
                    onPressed: () {
                      NavigatorService.pushNamedAndRemoveUntil(
                          AppRoutes.mainScreen);
                    },
                  ),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Terms of Use / Privacy Policy',
                      style: theme.textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    height: 57.v,
    centerTitle: true,
    title: AppbarSubtitleOne(
      text: 'FootyFeed',
    ),
  );
}

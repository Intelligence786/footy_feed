import 'package:flutter/material.dart';
import 'package:footy_feed/widgets/app_bar/appbar_subtitle.dart';
import 'package:footy_feed/widgets/app_bar/custom_app_bar.dart';

import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static Widget builder(BuildContext context) {
    return SettingsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppbarLeadingImage(
            onTap: () {
              NavigatorService.goBack();
            },
            imagePath: ImageConstant.imgLeading,
            //margin: EdgeInsets.only(left: 16.h),
          ),
        ),
        title: AppbarSubtitle(text: 'Settings'),
        centerTitle: true,
        styleType: Style.bgFill,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  fit: BoxFit.fitWidth,
                  imagePath: ImageConstant.imgAlert,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Give us 5 star',
                        style: CustomTextStyles.titleLargeErrorContainer,
                      ),
                      Text('Your feedback helps us\nto improve'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12.h),
              decoration: AppDecoration.fillWhiteWithBorderTop,
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                      children: [
                        _buildSettingsButton(
                          context,
                          name: 'Terms of use',
                          imagePath: ImageConstant.imgFrame,
                          onTap: () {},
                        ),
                        _buildSettingsButton(
                          context,
                          name: 'Privacy Policy',
                          imagePath: ImageConstant.imgLayer1,
                          onTap: () {},
                        ),
                        _buildSettingsButtonWithout(
                          context,
                          name: 'Support page',
                          imagePath: ImageConstant.imgFaceAgent,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.v,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
                    decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                      children: [
                        _buildSettingsButton(
                          context,
                          name: 'Share with friends',
                          imagePath: ImageConstant.imgShareAll,
                          onTap: () {},
                        ),
                        _buildSettingsButtonWithout(
                          context,
                          name: 'Subscription info',
                          imagePath: ImageConstant.imgOtherIcons,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsButton(BuildContext context,
      {String name = '', String imagePath = '', Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
            color: theme.colorScheme.onErrorContainer,
          ),
          Expanded(
            child: Container(
              decoration: AppDecoration.outlineOnPrimaryContainer,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      name,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: Colors.black.withAlpha(50),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsButtonWithout(BuildContext context,
      {String name = '', String imagePath = '', Function? onTap}) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: imagePath,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 12.v),
            color: theme.colorScheme.onErrorContainer,
          ),
          Expanded(
            child: Container(
              //  decoration: AppDecoration.outlineOnPrimaryContainer,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.only(top: 12.v, bottom: 12.v),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      name,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: Colors.black.withAlpha(50),
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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:footy_feed/core/app_export.dart';
import 'package:footy_feed/data/data_manager.dart';
import 'package:footy_feed/presentation/main_screen/widgets/match_widget.dart';
import 'package:footy_feed/presentation/main_screen/widgets/news_widget.dart';
import 'package:footy_feed/widgets/app_bar/appbar_trailing_image.dart';
import 'package:footy_feed/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/app_bar/appbar_title.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static Widget builder(BuildContext context) {
    return MainScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 48.v,
        title: AppbarTitle(
          text: 'Matches',
          margin: EdgeInsets.only(left: 16.h),
        ),
        actions: [
          AppbarTrailingImage(
            onTap: () {
              NavigatorService.pushNamed(AppRoutes.settingsScreen);
            },
            imagePath: ImageConstant.imgBxCogSvg,
            margin: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 10.v,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          _newsWidget(context),
          Expanded(child: _matchesWidget(context))
        ],
      ),
    );
  }

  Widget _newsWidget(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'News',
            style: CustomTextStyles.titleMediumErrorContainer,
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 0.74,
              enableInfiniteScroll: false,
              pageSnapping: false,
              disableCenter: true),
          items: DataManager.getAllNews().map((i) {
            return Builder(
              builder: (BuildContext context) {
                return NewsWidget(i);
              },
            );
          }).toList(),
        )
      ],
    );
  }

  Widget _matchesWidget(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteWithBorderTop,
      child: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'History mathes',
              style: CustomTextStyles.titleMediumOnPrimaryContainer,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16.v,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: DataManager.matches.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: MatchWidget(
                        DataManager.matches[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

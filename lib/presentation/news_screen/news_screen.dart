import 'package:flutter/material.dart';
import 'package:footy_feed/core/app_export.dart';
import 'package:footy_feed/data/models/news_model/news_model.dart';
import 'package:footy_feed/widgets/app_bar/custom_app_bar.dart';
import 'package:intl/intl.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';

class NewsScreen extends StatelessWidget {
  final NewsModel newsModel;

  const NewsScreen({super.key, required this.newsModel});

  static Widget builder(BuildContext context, NewsModel newsModel) {
    return NewsScreen(newsModel: newsModel);
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
        styleType: Style.bgFill,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 16.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: newsModel.imgUrl,
              height: 170.v,
              width: 358.h,
              radius: BorderRadius.circular(
                16.h,
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 31.v,
              ),
              decoration: AppDecoration.fillErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTOP16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 314.h,
                    margin: EdgeInsets.only(right: 27.h),
                    child: Text(
                      newsModel.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                  Text(
                    DateFormat('d MMMM, HH:mm').format(newsModel.dateTime!),
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    width: 339.h,
                    child: Text(
                      newsModel.body!,
                      maxLines: 41,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer_1
                          .copyWith(
                        height: 1.38,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

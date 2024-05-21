import 'package:flutter/material.dart';
import 'package:footy_feed/data/models/news_model/news_model.dart';
import 'package:intl/intl.dart';

import '../../../core/app_export.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget(this.newsModel, {Key? key})
      : super(
          key: key,
        );
  NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 267.h,
      height: 200.v,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              NavigatorService.pushNamed(AppRoutes.newsScreen,
                  arguments: newsModel);
            },
            child: Stack(
              children: [
                Container(
                  width: 267.h,
                  //height: 500,
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 5.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                    image: DecorationImage(
                      image: AssetImage(
                        newsModel.imgUrl!,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: AppDecoration
                      .gradientPrimaryContainerToPrimaryContainer
                      .copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: SizedBox(height: 112.v),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 5.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 62.v),
                      SizedBox(
                        width: 201.h,
                        child: Text(
                          newsModel.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!.copyWith(
                            height: 1.38,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            DateFormat('d MMMM, HH:mm').format(newsModel.dateTime!),
            style: theme.textTheme.labelLarge,
          )
        ],
      ),
    );
  }
}

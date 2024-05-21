import 'package:flutter/material.dart';
import 'package:footy_feed/data/models/matches_model/matches_model.dart';
import 'package:footy_feed/theme/custom_button_style.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import 'match_result_bottomsheet.dart';

// ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable
class MatchWidget extends StatelessWidget {
  MatchWidget(this.matchResult, {Key? key})
      : super(
          key: key,
        );
  MatchResult matchResult;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: matchResult.game.homeTeam.logoUrl!,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.only(
                  right: 8.h,
                  top: 4.v,
                  bottom: 7.v,
                ),
              ),
              SizedBox(
                width: 75.h,
                child: Text(
                  matchResult.game.homeTeam.name!,
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumOnPrimaryContainer_1,
                ),
              ),
              Spacer(
                flex: 40,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 10.v,
                ),
                child: Text(
                  '${matchResult.homeScore} - ${matchResult.awayScore}'!,
                  style: theme.textTheme.titleLarge,
                ),
              ),
              Spacer(
                flex: 40,
              ),
              SizedBox(
                width: 75.h,
                child: Text(
                  matchResult.game.awayTeam.name!,
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.right,
                  style:
                      CustomTextStyles.titleMediumOnPrimaryContainer_1.copyWith(
                    height: 1.38,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: matchResult.game.awayTeam.logoUrl!,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 4.v,
                  bottom: 7.v,
                ),
              )
            ],
          ),
          SizedBox(height: 4.v),
          Text(
            matchResult.game.stadium!,
            style: CustomTextStyles.labelLargeOnPrimaryContainer,
          ),
          SizedBox(height: 8.v),
          _buildSeeDetailsButton(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeeDetailsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      text: 'See details',
      buttonStyle: CustomButtonStyles.withoutShadow,
      buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer,
     // decoration: AppDecoration.withoutShadow.copyWith(color: theme.colorScheme.primary.withOpacity(0.08),),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: MatchResultBottomSheet(matchResult: matchResult)),
        );
      },
    );
  }
}

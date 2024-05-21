import 'package:flutter/material.dart';
import 'package:footy_feed/core/app_export.dart';
import 'package:footy_feed/theme/custom_button_style.dart';
import 'package:footy_feed/widgets/custom_icon_button.dart';

import '../../../data/models/matches_model/matches_model.dart';

class MatchResultBottomSheet extends StatelessWidget {
  final MatchResult matchResult;

  MatchResultBottomSheet({required this.matchResult});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          decoration:
              AppDecoration.gradientPrimaryContainerToOnPrimary.copyWith(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        margin: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(90),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Text(
                        'Game stats',
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      focusColor: Colors.white.withAlpha(80),
                      style: CustomButtonStyles.rounded,
                      alignment: Alignment.center,
                      onPressed: () {
                        NavigatorService.goBack();
                      },
                    
                      icon: Icon(
                        Icons.close,

                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              CustomImageView(
                imagePath: ImageConstant.imgFootballField,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 100.h,
                      child: _buildTeamColumn(matchResult.game.homeTeam)),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '${matchResult.homeScore} - ${matchResult.awayScore}',
                          style: theme.textTheme.headlineLarge,
                        ),
                        Text(
                          '${matchResult.game.stadium}',
                          style: CustomTextStyles.labelLargeErrorContainer,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: 100.h,
                      child: _buildTeamColumn(matchResult.game.awayTeam)),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: AppDecoration.fillErrorContainer1
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
                      child: Text(
                        'Statistics',
                        style: CustomTextStyles.titleMediumErrorContainer,
                      ),
                    ),
                    _buildStatsTable(),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTeamColumn(Team team) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            team.logoUrl,
            width: 50,
            height: 50,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 50,
                height: 50,
                color: Colors.grey.shade300,
                child: Icon(Icons.sports_soccer, size: 30),
              );
            },
          ),
        ),
        SizedBox(height: 8),
        Text(
          team.name,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium,
        ),
      ],
    );
  }

  Widget _buildStatsTable() {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(1),
      },
      children: [
        _buildStatsRow('Goals', matchResult.homeGoals, matchResult.awayGoals),
        _buildStatsRow(
            'Statistics', matchResult.homeStatistic, matchResult.awayStatistic,
            percent: true),
        _buildStatsRow(
            'Passing', matchResult.homePassing, matchResult.awayPassing,
            percent: true),
        _buildStatsRow(
            'Shooting', matchResult.homeShooting, matchResult.awayShooting,
            percent: true),
        _buildStatsRow('Yellow cards', matchResult.homeYellowCard,
            matchResult.awayYellowCard),
        TableRow(
          children: [
            TableCell(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 8),
                child: Text(
                  '',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                child: Text(
                  '',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  TableRow _buildStatsRow(String label, int homeValue, int awayValue,
      {bool percent = false}) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.grey.shade300.withAlpha(50))),
      ),
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: Text(
              homeValue.toString() + (percent ? '%' : ''),
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: Text(
              awayValue.toString() + (percent ? '%' : ''),
              textAlign: TextAlign.right,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}

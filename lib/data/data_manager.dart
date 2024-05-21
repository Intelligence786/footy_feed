import 'package:footy_feed/core/app_export.dart';

import 'models/matches_model/matches_model.dart';
import 'models/news_model/news_model.dart';

class DataManager {
  static final String _key = 'analysis_model';

  static List<Team> teams = [
    Team(name: "Ironclad", logoUrl: ImageConstant.imgTeam1),
    Team(name: "Apex Predators", logoUrl: ImageConstant.imgTeam2),
    Team(name: "Cobalt Strikers", logoUrl: ImageConstant.imgTeam3),
    Team(name: "Storm Surge", logoUrl: ImageConstant.imgTeam4),
    Team(name: "Emerald Legion", logoUrl: ImageConstant.imgTeam5),
    Team(name: "United Eagles", logoUrl: ImageConstant.imgTeam6),
    Team(name: "Crimson Tide", logoUrl: ImageConstant.imgTeam7),
    Team(name: "Phoenix United", logoUrl: ImageConstant.imgTeam8),
    Team(name: "Zenith Wanderers", logoUrl: ImageConstant.imgTeam9),
    Team(name: "Nightfall Guardians", logoUrl: ImageConstant.imgTeam10),
  ];

  static List<MatchResult> matches = [
    MatchResult(
      game: Game(
        homeTeam: teams[0],
        awayTeam: teams[1],
        stadium: "Victory Dome",
        date: "12 April, 08:10",
      ),
      homeScore: 2,
      awayScore: 1,
      homeGoals: 54,
      awayGoals: 46,
      homeStatistic: 25,
      awayStatistic: 18,
      homePassing: 31,
      awayPassing: 68,
      homeShooting: 42,
      awayShooting: 57,
      homeYellowCard: 11,
      awayYellowCard: 7,
    ),
    MatchResult(
      game: Game(
        homeTeam: teams[2],
        awayTeam: teams[3],
        stadium: "Coliseum Arena",
        date: "1 March, 10:20",
      ),
      homeScore: 3,
      awayScore: 1,
      homeGoals: 54,
      awayGoals: 46,
      homeStatistic: 25,
      awayStatistic: 18,
      homePassing: 31,
      awayPassing: 68,
      homeShooting: 42,
      awayShooting: 57,
      homeYellowCard: 11,
      awayYellowCard: 7,
    ),
    MatchResult(
      game: Game(
        homeTeam: teams[4],
        awayTeam: teams[5],
        stadium: "Skyward Stadium",
        date: "5 May, 14:30",
      ),
      homeScore: 2,
      awayScore: 0,
      homeGoals: 54,
      awayGoals: 46,
      homeStatistic: 25,
      awayStatistic: 18,
      homePassing: 31,
      awayPassing: 68,
      homeShooting: 42,
      awayShooting: 57,
      homeYellowCard: 11,
      awayYellowCard: 7,
    ),
    MatchResult(
      game: Game(
        homeTeam: teams[6],
        awayTeam: teams[7],
        stadium: "Skyward Stadium",
        date: "9 June, 16:40",
      ),
      homeScore: 2,
      awayScore: 2,
      homeGoals: 54,
      awayGoals: 46,
      homeStatistic: 25,
      awayStatistic: 18,
      homePassing: 31,
      awayPassing: 68,
      homeShooting: 42,
      awayShooting: 57,
      homeYellowCard: 11,
      awayYellowCard: 7,
    ),
    MatchResult(
      game: Game(
        homeTeam: teams[8],
        awayTeam: teams[9],
        stadium: "Victory Dome",
        date: "12 July, 18:50",
      ),
      homeScore: 4,
      awayScore: 2,
      homeGoals: 54,
      awayGoals: 46,
      homeStatistic: 25,
      awayStatistic: 18,
      homePassing: 31,
      awayPassing: 68,
      homeShooting: 42,
      awayShooting: 57,
      homeYellowCard: 11,
      awayYellowCard: 7,
    ),
  ];

  static List<NewsModel> getAllNews() {
    List<NewsModel> news = [
      NewsModel(
          dateTime: DateTime.now(),
          imgUrl: ImageConstant.imgNews1,
          title: 'Real Madrid win El Clásico against Barcelona',
          body:
              'MADRID, Spain -- Real Madrid secured a convincing 3-1 victory over arch-rivals Barcelona in El Clásico at the Santiago Bernabéu on Saturday evening. Goals from Karim Benzema, Federico Valverde and Rodrygo earned Real Madrid the three points in a pulsating match.\n\nPierre-Emerick Aubameyang scored Barcelona\'s only goal. Real Madrid\'s victory was their first over Barcelona in La Liga since March 2020.\n\nIt also moved them nine points clear of the Catalan club at the top of the table. Real Madrid dominated the first half and took the lead in the 12th minute when Benzema pounced on a mistake by Barcelona defender Gerard Piqué to open the scoring. Barcelona drew level in the 29th minute when Aubameyang turned in a cross from Ousmane Dembélé. However, Real Madrid restored their advantage two minutes later when Valverde fired a powerful shot into the top corner from outside the penalty area. Barcelona struggled to get back into the game in the second half as Real Madrid were too strong.\n\nRodrygo added a third goal in the 72nd minute to wrap up the scoring. Real Madrid\'s victory dealt a major blow to Barcelona\'s hopes of winning the La Liga title.\n\nReal Madrid are now in a strong position to win their 35th Spanish league title.'),
      NewsModel(
        dateTime: DateTime.now(),
        imgUrl: ImageConstant.imgNews2,
        title:
            'Manchester City set new record for consecutive Premier League wins',
        body:
            'Manchester, England - Manchester City secured their 15th consecutive Premier League victory with a 5-0 thrashing of Newcastle United at the Etihad Stadium on Sunday afternoon. Goals from Raheem Sterling, Kevin De Bruyne, Riyad Mahrez, Rodri and Ilkay Gundogan earned Manchester City the three points and set a new record for the league. Manchester City\'s winning run began in December 2021 when they beat Arsenal 2-1.\n\nSince then, Pep Guardiola\'s side have recorded victories over the likes of Chelsea, Manchester United and Liverpool. Manchester City\'s record-breaking run of consecutive Premier League wins is a new landmark for the club and Guardiola.\n\nIt is also a testament to the team\'s dominance of English football this season. Manchester City are top of the Premier League table, 12 points clear of second-placed Liverpool.\n\nThey also have a game in hand over their closest rivals. If Manchester City can continue their winning run, they could break several more records this season.\n\nThey could become the first team to win the Premier League without losing a game and the first team to win over 100 points in a season.23:20',
      ),
      NewsModel(
        dateTime: DateTime.now(),
        imgUrl: ImageConstant.imgNews3,
        title: 'Liverpool crash out of FA Cup after shock Brighton defeat',
        body:
            'Brighton, England - Liverpool crashed out of the FA Cup after a shock 2-1 defeat to Brighton at the Amex Stadium on Sunday evening. Goals from Marc Cucurella and Leandro Trossard earned Brighton the victory, with Harvey Elliott scoring a consolation for Liverpool. The defeat is a major blow to Liverpool\'s hopes of winning the quadruple this season.\n\nThey have already been knocked out of the Carabao Cup and trail Manchester City by nine points in the Premier League. Liverpool dominated the first half but failed to make their chances count.\n\nBrighton took the lead in the 34th minute when Cucurella headed home Neal Maupay\'s cross. Liverpool drew level in the 60th minute when Elliott curled in a stunning strike from distance. However, Brighton hit back 10 minutes later when Trossard converted a penalty after Joe Gomez was adjudged to have fouled him. Liverpool pushed for an equalizer in the remaining time but Brighton held on to secure a знаменитую победу.\n\nThe defeat is Liverpool\'s first in the FA Cup since the 2019/20 season. Brighton\'s victory is one of the biggest in their history.\n\nIt also means they have reached the FA Cup quarter-finals for the first time since the 1985/86 season.23:21',
      ),
      NewsModel(
        dateTime: DateTime.now(),
        imgUrl: ImageConstant.imgNews4,
        title: 'Christian Eriksen makes football return after cardiac arrest',
        body:
            'Copenhagen, Denmark - Denmark midfielder Christian Eriksen made his football return after suffering a cardiac arrest at Euro 2020, coming on as a substitute in a friendly for his new club Brentford against Southampton on Saturday.\n\nEriksen entered the pitch in the 52nd minute to a standing ovation from the fans of both teams.\n\nHe played 36 minutes and helped Brentford to a 3-2 victory.\n\nEriksen\'s return was an emotional moment for everyone involved in the match.\n\nHe received a standing ovation from the entire stadium as he prepared to enter the pitch.\n\nEriksen suffered a cardiac arrest during Denmark\'s Euro 2020 group stage match against Finland in June 2021.\n\nHe was saved thanks to the quick actions of the medical staff and his teammates.\n\nFollowing the cardiac arrest, Eriksen was fitted with an implantable cardioverter-defibrillator (ICD), which is a device that sends electrical pulses to the heart to restore a normal rhythm.\n\nEriksen\'s return to football is a testament to his strength and determination.\n\nIt is also a testament to the improving medical care and rehabilitation available to athletes who suffer cardiac arrests.\n\nEriksen\'s return gives hope to other athletes and to everyone who has suffered a cardiac arrest.\n\nIt is a reminder that even after a major medical event, it is possible to return to an active and fulfilling life.',
      ),
      NewsModel(
        dateTime: DateTime.now(),
        imgUrl: ImageConstant.imgNews5,
        title: 'Karim Benzema becomes Champions League top scorer',
        body:
            'Madrid, Spain - Real Madrid forward Karim Benzema has become the top scorer in this season\'s Champions League after scoring twice in a 3-1 victory over Chelsea in the first leg of their quarter-final tie.\n\nBenzema\'s goals helped Real Madrid to a crucial 3-1 first-leg advantage heading into next week\'s second leg at Stamford Bridge in London.\n\nBenzema has now scored 12 goals in this season\'s Champions League, three more than his nearest challenger, Robert Lewandowski.\n\nBenzema has been in superb form this season, scoring 37 goals in all competitions.\n\nHe is one of the favourites to win the Ballon d\'Or this year.\n\nBenzema\'s achievement is further evidence of his status as one of the best strikers in the world.\n\nHe has been a key player for Real Madrid this season and has played a major role in the team\'s success in all competitions.\n\nBenzema will be hoping to continue his goalscoring form in the second leg against Chelsea next week.\n\nReal Madrid will be looking to reach the semi-finals of the Champions League and take another step towards winning a record-extending 14th title in the competition.',
      ),
    ];

    return news;
  }
}

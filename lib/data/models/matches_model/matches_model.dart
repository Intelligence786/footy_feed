class Team {
  final String name;
  final String logoUrl;

  Team({required this.name, required this.logoUrl});
}

class Game {
  final Team homeTeam;
  final Team awayTeam;
  final String stadium;
  final String date;

  Game({
    required this.homeTeam,
    required this.awayTeam,
    required this.stadium,
    required this.date,
  });
}

class MatchResult {
  final Game game;
  final int homeScore;
  final int awayScore;
  final int homeGoals;
  final int awayGoals;
  final int homeStatistic;
  final int awayStatistic;
  final int homePassing;
  final int awayPassing;
  final int homeShooting;
  final int awayShooting;
  final int homeYellowCard;
  final int awayYellowCard;

  MatchResult({required this.game, required this.homeScore, required this.awayScore, required this.homeGoals, required this.awayGoals, required this.homeStatistic, required this.awayStatistic, required this.homePassing, required this.awayPassing, required this.homeShooting, required this.awayShooting, required this.homeYellowCard, required this.awayYellowCard});


}

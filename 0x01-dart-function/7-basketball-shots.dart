int getTeamScore(Map<String, int> team) {
  return team['Free throws']! +
      team['2 pointers']! * 2 +
      team['3 pointers']! * 3;
}

/// If team A has a higher score than team B, return 1. If team B has a higher score than team A, return
/// 2. If the scores are equal, return 0. If the scores are not equal, return 5.
///
/// Args:
///   teamA (Map<String, int>): A map of the team's name and their score.
///   teamB (Map<String, int>): A map of the team's name and their score.
///
/// Returns:
///   The team that wins.
int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = getTeamScore(teamA);
  int scoreB = getTeamScore(teamB);
  if (scoreA > scoreB) return 1;
  if (scoreA < scoreB) return 2;
  return 0;
}

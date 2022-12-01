/// For each key-value pair in the map, if the key is 'Free throws', add the value to the result; if the key is '2 pointer', add the value times two to the result; if the key is '3 pointer', add the value times three to the result.
///
/// Args:
///   team (Map<String, int>): a Map of strings to ints. The keys are the names of the players, and the values are the number of points they scored.
///
/// Returns:
///   The total score of the team.
int getTeamScore(Map<String, int> team) {
  int result = 0;
  team.forEach((key, value) {
    if (key == 'Free throws') result += value;
    if (key == '2 pointer') result += value * 2;
    if (key == '3 pointer') result += value * 3;
  });
  return result;
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

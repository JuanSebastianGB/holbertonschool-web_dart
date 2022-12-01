int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int scoreA = teamA.values.reduce((value, acum) => value + acum);
  int scoreB = teamB.values.reduce((value, acum) => value + acum);
  if (scoreA < scoreB) return 2;
  if (scoreA > scoreB) return 1;
  if (scoreA == scoreB) return 0;
  return 5;
}

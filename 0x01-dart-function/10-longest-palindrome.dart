bool isPalindrome(String s) {
  if (s.length < 3) return false;
  var reversedString = s.split('').reversed.join();
  return reversedString == s;
}

String processSubString(String s) {
  String longest = '';
  String current = '';
  for (int i = 0; i < s.length; i++) {
    for (int j = i; j < s.length; j++) {
      current = s.substring(i, j + 1);
      if (current.length > longest.length && isPalindrome(current))
        longest = current;
    }
  }
  return longest;
}

String longestPalindrome(String s) {
  String longest;
  if (s.length < 3) return 'none';
  if (s == s.split('').reversed.join('')) return s;
  longest = processSubString(s);
  return longest == '' ? 'none' : longest;
}

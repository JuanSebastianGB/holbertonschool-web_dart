bool isPalindrome(String s) {
  if (s.length <= 3) return false;
  var reversedString = s.split('').reversed.join();
  if (reversedString == s) return true;
  return false;
}

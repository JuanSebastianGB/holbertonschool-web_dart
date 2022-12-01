/// If f is 1, return 1. If f is less than or equal to 0, return 0. Otherwise, return the factorial of f
/// minus 1 times f.
///
/// Args:
///   f (int): The number to calculate the factorial of.
///
/// Returns:
///   The factorial of the number passed in.
int fact(int f) {
  if (f == 1) return 1;
  if (f <= 0) return 0;
  return fact(f - 1) * f;
}

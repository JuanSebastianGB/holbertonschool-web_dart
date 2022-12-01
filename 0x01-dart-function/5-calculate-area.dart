/// CalculateArea() takes two double parameters, height and base, and returns a double value.
///
/// Args:
///   height (double): The height of the triangle.
///   base (double): The base of the triangle.
///
/// Returns:
///   A function that takes two parameters and returns a double.
double calculateArea(double height, double base) {
  return double.parse((height * base / 2).toStringAsFixed(2));
}

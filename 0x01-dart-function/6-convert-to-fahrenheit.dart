double roundNumberToTwo(double number) {
  return double.parse(number.toStringAsFixed(2));
}

/// "Convert a list of temperatures in Celsius to Fahrenheit."
///
/// The function takes a list of temperatures in Celsius and returns a list of temperatures in
/// Fahrenheit
///
/// Args:
///   temperaturesInC (List<double>): A list of temperatures in Celsius.
///
/// Returns:
///   A list of temperatures in Fahrenheit.
List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC
      .map((temperature) => roundNumberToTwo((temperature * 9 / 5) + 32))
      .toList();
}

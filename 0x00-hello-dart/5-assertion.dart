void main(List<String> args) {
  /*
  Write Your code below
   */
  var inputData = int.parse(args[0]);
  if (inputData >= 80) return print('You Passed');
  throw Exception('The score must be bigger or equal to 80');
}

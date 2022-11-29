void main(List<String> args) {
  var firstArgument = int.parse(args[0]);
  var message;
  if (firstArgument < 0) message = "negative";
  if (firstArgument == 0) message = "zero";
  if (firstArgument > 0) message = "positive";
  print('$firstArgument is ${message}');
}

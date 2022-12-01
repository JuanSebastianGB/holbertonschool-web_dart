/// `outer` takes two parameters, `name` and `id`, and prints the result of calling `inner` which
/// returns a string
///
/// Args:
///   name (String): String
///   id (String): This is the parameter that is passed to the outer function.
void outer(String name, String id) {
  String inner() {
    var firstChar = name.split(' ')[1][0];
    return 'Hello Agent $firstChar.${name.split(' ')[0]} your id is $id';
  }

  print(inner());
}

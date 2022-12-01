void outer(String name, String id) {
  String inner() {
    var firstChar = name.split(' ')[1][0];
    return 'Hello Agent $firstChar.${name.split(' ')[0]} your id is $id';
  }

  print(inner());
}

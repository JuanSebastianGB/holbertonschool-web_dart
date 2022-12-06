import 'dart:convert';

import 'package:http/http.dart' as Http;

Future<void> printBbCharacters() async {
  var url = 'https://breakingbadapi.com/api/characters';

  try {
    var response = await Http.get(Uri.parse(url));
    var jsonResponse = json.decode(response.body);
    jsonResponse.map((character) => print(character));
  } catch (e) {
    print('error caught: $e');
  }
}

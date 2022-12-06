import 'dart:convert';

import 'package:http/http.dart' as Http;

Future<String> generateQuote(id) async {
  String url = 'https://breakingbadapi.com/api/quotes/$id';
  try {
    var response = await Http.get(Uri.parse(url));
    var quote = json.decode(response.body)[0];
    return '${quote['author']} : ${quote['quote']}';
  } catch (e) {
    print('There are no quotes');
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

Future<List<int>> fetchData() async {
  Response responce = await http.get(
    Uri.parse('https://api.rootnet.in/covid19-in/stats/latest/'),
  );
  var data = json.decode(responce.body);
  var currentData = data['data']['summary'];

  return [
    currentData['confirmedCasesIndian'],
    currentData['discharged'],
    currentData['deaths']
  ];
}

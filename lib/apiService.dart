import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiHandeler {
  late List<int?> _values;
  Future<void> _fetchData() async {
    _values = [0, 0, 0];

    var responce =
        await http.get(Uri.https('api.rootnet.in', 'covid19-in/stats/latest'));
    var data = json.decode(responce.body);
    var currentData = data['data']['summary'];
    _values[0] = currentData['confirmedCasesIndian'];
    _values[1] = currentData['discharged'];
    _values[2] = currentData['deaths'];
  }

  Future<List> getData() async {
    await _fetchData();
    List covidData = _values.toList();
    return covidData;
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiHandeler {
  List<int> _values;
  void _fetchData() async {
    _values = [0, 0, 0];;
    var responce = await http.get(Uri.encodeFull(
        'https://api.covid19api.com/total/country/India'));
    List data = json.decode(responce.body);
    var currentData = data[data.length - 1];
    _values[0] = currentData['Confirmed'];
    _values[1] = currentData['Recovered'];
    _values[2] = currentData['Deaths'];
  }

  getData() {
    _fetchData();
    List covidData = _values.toList();
    print(covidData);
    return covidData;
  }
}

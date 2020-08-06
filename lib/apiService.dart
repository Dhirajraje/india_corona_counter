import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiHandeler {
  List _values = [0, 0, 0];
  Future<String> fetchData() async {
    var responce = await http.get(Uri.encodeFull(
        'https://api.apify.com/v2/datasets/58a4VXwBBF0HtxuQa/items?format=json&clean=1'));
    List data = json.decode(responce.body);
    var currentData = data[data.length - 1];
    _values[0] += currentData['totalCases'];
    _values[1] += currentData['recovered'];
    _values[2] += currentData['deaths'];
  }

  getData() async {
    _values = [0, 0, 0];
    await fetchData();
    print(_values);
    return _values;
  }
}

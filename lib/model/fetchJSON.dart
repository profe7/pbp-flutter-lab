import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<List<MyWatchList>> fetchJSON() async {
  final response = await http.get(Uri.parse(
      'https://djangolab2.herokuapp.com/mywatchlist/json/'));
  if (response.statusCode == 200) {
    final List<MyWatchList> mywatchlist = [];
    final List<dynamic> data = convert.jsonDecode(response.body);
    for (Map<String, dynamic> i in data) {
      mywatchlist.add(MyWatchList.fromMap(i));
    }
    return mywatchlist;
  } else {
    throw Exception('Failed to load data');
  }
}


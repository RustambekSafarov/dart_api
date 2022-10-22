import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

void main() async {
  http.Response response = await http.get(
    Uri.parse('https://randomuser.me/api/'),
  );

  Map json = jsonDecode(response.body);
  List res = json['results'];

  print(res[0]['name']['first']);
  print(res[0]['name']['last']);
}

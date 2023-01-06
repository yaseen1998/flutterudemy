import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  final res = await fetchAlbum();
  print(res[0]);
  
}

Future<dynamic> fetchAlbum() async {
  final String url = 'https://jsonplaceholder.typicode.com/albums';
  final http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load album');
  }
}

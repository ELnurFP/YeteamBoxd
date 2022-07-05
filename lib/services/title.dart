import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yeteamboxd/models/title.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<Title> getTitledata(id) async {
    Title result;
    final response = await http
        .get(Uri.parse('https://imdb-api.com/en/API/Title/k_ywahc056/' + id));
    if (response.statusCode == 200) {
      final list = json.decode(response.body);
      result = Title.fromJson(list);
    } else {
      throw Exception(response.reasonPhrase);
    }
    return result;
  }
}

//API SERVICE Provider
final apiProvider = Provider<ApiService>((ref) => ApiService());

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yeteamboxd/constants/get_random_element.dart';
import 'package:yeteamboxd/models/populyar_movies.dart';
import 'package:yeteamboxd/models/title.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List<String> apikeys = ['k_ywahc056', 'k_xolopq78'];

class ApiService {
  Future<Title> getTitledata(id) async {
    Title result;
    String apikey = getRandomElement(apikeys);
    final response = await http.get(
      Uri.parse('https://imdb-api.com/en/API/Title/$apikey/$id'),
    );
    print(apikey);
    if (response.statusCode == 200) {
      final list = json.decode(response.body);
      result = Title.fromJson(list);
    } else {
      throw Exception(response.reasonPhrase);
    }
    return result;
  }

  Future<PopulyarMovies> getPopulyarMovies() async {
    PopulyarMovies result;
    String apikey = getRandomElement(apikeys);
    final response = await http.get(
      Uri.parse('https://imdb-api.com/en/API/MostPopularMovies/$apikey'),
    );
    print(apikey);
    if (response.statusCode == 200) {
      final list = json.decode(response.body);
      result = PopulyarMovies.fromJson(list);
    } else {
      throw Exception(response.reasonPhrase);
    }
    return result;
  }
}

//API SERVICE Provider
final apiProvider = Provider<ApiService>((ref) => ApiService());

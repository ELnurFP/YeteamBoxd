import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:yeteamboxd/constants/get_random_element.dart';
import 'package:yeteamboxd/models/title.dart';

part 'search.g.dart';

List<String> apikeys = ['k_ywahc056', 'k_xolopq78'];

String apikey = getRandomElement(apikeys);

@RestApi(baseUrl: 'https://imdb-api.com/en/API/k_ywahc056')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("{id}")
  Future<Title> getTitleFromID(@Path("id") String id);
}

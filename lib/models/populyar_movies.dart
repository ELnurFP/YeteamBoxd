import 'package:json_annotation/json_annotation.dart';

part 'populyar_movies.g.dart';

@JsonSerializable()
class PopulyarMovies {
  List<Items>? items;
  String? errorMessage;
  PopulyarMovies({this.items, this.errorMessage});
  factory PopulyarMovies.fromJson(Map<String, dynamic> json) =>
      _$PopulyarMoviesFromJson(json);
  Map<String, dynamic> toJson() => _$PopulyarMoviesToJson(this);
}

@JsonSerializable()
class Items {
  String? id;
  String? rank;
  String? title;
  String? fullTitle;
  String? year;
  String? image;
  String? crew;
  String? imDbRating;
  String? imDbRatingCount;
  Items(
      {this.id,
      this.rank,
      this.title,
      this.fullTitle,
      this.year,
      this.image,
      this.crew,
      this.imDbRating,
      this.imDbRatingCount});
  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'title.g.dart';

@JsonSerializable()
class Title {
  String? id;
  String? title;
  String? image;
  String? year;
  String? runtimeMins;
  String? plot;
  String? directors;
  List<ActorList>? actorList;
  List<Similars>? similars;
  List<GenreList>? genreList;
  List<CompanyList>? companyList;
  List<CountryList>? countryList;
  List<LanguageList>? languageList;
  Title({
    this.id,
    this.title,
    this.image,
    this.year,
    this.plot,
    this.actorList,
    this.runtimeMins,
    this.directors,
    this.similars,
    this.genreList,
    this.companyList,
    this.countryList,
    this.languageList,
  });

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class ActorList {
  String? id, name, image, asCharacter;
  ActorList({this.id, this.name, this.image, this.asCharacter});
  factory ActorList.fromJson(Map<String, dynamic> json) =>
      _$ActorListFromJson(json);
  Map<String, dynamic> toJson() => _$ActorListToJson(this);
}

@JsonSerializable()
class GenreList {
  String? key;
  String? value;

  GenreList({this.key, this.value});

  factory GenreList.fromJson(Map<String, dynamic> json) =>
      _$GenreListFromJson(json);
  Map<String, dynamic> toJson() => _$GenreListToJson(this);
}

@JsonSerializable()
class Similars {
  String? id;
  String? title;
  String? image;
  String? imDbRating;

  Similars({this.id, this.title, this.image, this.imDbRating});
  factory Similars.fromJson(Map<String, dynamic> json) =>
      _$SimilarsFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarsToJson(this);
}

@JsonSerializable()
class CompanyList {
  String? id;
  String? name;

  CompanyList({this.id, this.name});

  factory CompanyList.fromJson(Map<String, dynamic> json) =>
      _$CompanyListFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyListToJson(this);
}

@JsonSerializable()
class CountryList {
  String? key;
  String? value;
  CountryList({this.key, this.value});
  factory CountryList.fromJson(Map<String, dynamic> json) =>
      _$CountryListFromJson(json);
  Map<String, dynamic> toJson() => _$CountryListToJson(this);
}

@JsonSerializable()
class LanguageList {
  String? key;
  String? value;
  LanguageList({this.key, this.value});
  factory LanguageList.fromJson(Map<String, dynamic> json) =>
      _$LanguageListFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageListToJson(this);
}

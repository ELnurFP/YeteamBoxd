// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      year: json['year'] as String?,
      plot: json['plot'] as String?,
      actorList: (json['actorList'] as List<dynamic>?)
          ?.map((e) => ActorList.fromJson(e as Map<String, dynamic>))
          .toList(),
      runtimeMins: json['runtimeMins'] as String?,
      directors: json['directors'] as String?,
      similars: (json['similars'] as List<dynamic>?)
          ?.map((e) => Similars.fromJson(e as Map<String, dynamic>))
          .toList(),
      genreList: (json['genreList'] as List<dynamic>?)
          ?.map((e) => GenreList.fromJson(e as Map<String, dynamic>))
          .toList(),
      companyList: (json['companyList'] as List<dynamic>?)
          ?.map((e) => CompanyList.fromJson(e as Map<String, dynamic>))
          .toList(),
      countryList: (json['countryList'] as List<dynamic>?)
          ?.map((e) => CountryList.fromJson(e as Map<String, dynamic>))
          .toList(),
      languageList: (json['languageList'] as List<dynamic>?)
          ?.map((e) => LanguageList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'year': instance.year,
      'runtimeMins': instance.runtimeMins,
      'plot': instance.plot,
      'directors': instance.directors,
      'actorList': instance.actorList,
      'similars': instance.similars,
      'genreList': instance.genreList,
      'companyList': instance.companyList,
      'countryList': instance.countryList,
      'languageList': instance.languageList,
    };

ActorList _$ActorListFromJson(Map<String, dynamic> json) => ActorList(
      id: json['id'] as String?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      asCharacter: json['asCharacter'] as String?,
    );

Map<String, dynamic> _$ActorListToJson(ActorList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'asCharacter': instance.asCharacter,
    };

GenreList _$GenreListFromJson(Map<String, dynamic> json) => GenreList(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$GenreListToJson(GenreList instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

Similars _$SimilarsFromJson(Map<String, dynamic> json) => Similars(
      id: json['id'] as String?,
      title: json['title'] as String?,
      image: json['image'] as String?,
      imDbRating: json['imDbRating'] as String?,
    );

Map<String, dynamic> _$SimilarsToJson(Similars instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
    };

CompanyList _$CompanyListFromJson(Map<String, dynamic> json) => CompanyList(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CompanyListToJson(CompanyList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CountryList _$CountryListFromJson(Map<String, dynamic> json) => CountryList(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$CountryListToJson(CountryList instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

LanguageList _$LanguageListFromJson(Map<String, dynamic> json) => LanguageList(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$LanguageListToJson(LanguageList instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

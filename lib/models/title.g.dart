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
    };

ActorList _$ActorListFromJson(Map<String, dynamic> json) => ActorList(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      asCharacter: json['asCharacter'] as String,
    );

Map<String, dynamic> _$ActorListToJson(ActorList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'asCharacter': instance.asCharacter,
    };

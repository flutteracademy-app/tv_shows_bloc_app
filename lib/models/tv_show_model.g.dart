// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_show_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvShowModel _$TvShowModelFromJson(Map<String, dynamic> json) => TvShowModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      permalink: json['permalink'] as String?,
      country: json['country'] as String?,
      network: json['network'] as String?,
      status: json['status'] as String?,
      image_thumbnail_path: json['image_thumbnail_path'] as String?,
    );

Map<String, dynamic> _$TvShowModelToJson(TvShowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permalink': instance.permalink,
      'country': instance.country,
      'network': instance.network,
      'status': instance.status,
      'image_thumbnail_path': instance.image_thumbnail_path,
    };

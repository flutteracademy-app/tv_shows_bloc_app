// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_tv_shows_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularTvShowsModel _$PopularTvShowsModelFromJson(Map<String, dynamic> json) =>
    PopularTvShowsModel(
      total: json['total'] as String?,
      page: json['page'] as int?,
      pages: json['pages'] as int?,
      tv_shows: (json['tv_shows'] as List<dynamic>?)
          ?.map((e) => TvShowModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularTvShowsModelToJson(
        PopularTvShowsModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tv_shows,
    };

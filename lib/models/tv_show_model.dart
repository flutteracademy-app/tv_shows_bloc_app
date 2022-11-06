// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

/// The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'tv_show_model.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class TvShowModel {
  int? id;
  String? name;
  String? permalink;
  String? country;
  String? network;
  String? status;
  String? image_thumbnail_path;
  TvShowModel({
    this.id,
    this.name,
    this.permalink,
    this.country,
    this.network,
    this.status,
    this.image_thumbnail_path,
  });

  factory TvShowModel.fromJson(Map<String, dynamic> json) =>
      _$TvShowModelFromJson(json);

  Map<String, dynamic> toJson() => _$TvShowModelToJson(this);
}

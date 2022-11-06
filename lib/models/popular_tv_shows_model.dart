// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:tv_shows_bloc_app/models/tv_show_model.dart';

/// The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'popular_tv_shows_model.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class PopularTvShowsModel {
  String? total;
  int? page;
  int? pages;
  List<TvShowModel>? tv_shows;
  PopularTvShowsModel({
    this.total,
    this.page,
    this.pages,
    this.tv_shows,
  });

  factory PopularTvShowsModel.fromJson(Map<String, dynamic> json) =>
      _$PopularTvShowsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PopularTvShowsModelToJson(this);
}

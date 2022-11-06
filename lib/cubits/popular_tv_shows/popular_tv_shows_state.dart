import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tv_shows_bloc_app/models/popular_tv_shows_model.dart';
import 'package:tv_shows_bloc_app/ui/screens/utils/models.utils.dart';

part 'popular_tv_shows_state.freezed.dart';

@freezed
class PopularTvShowsState with _$PopularTvShowsState {
  const factory PopularTvShowsState({
    @Default(null) PopularTvShowsModel? popularTvShowsModel,
    @Default(StatusModel.INITIAL) StatusModel? status,
    @Default('Esto es un error') String? errorMessage,
  }) = _PopularTvShowsState;
}
// flutter pub run build_runner build --delete-conflicting-outputs 
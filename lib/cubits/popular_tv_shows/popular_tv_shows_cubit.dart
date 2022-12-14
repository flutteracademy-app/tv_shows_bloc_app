import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_state.dart';
import 'package:tv_shows_bloc_app/data/repositories/popular_tv_shows/popular_tv_shows_repository.dart';
import 'package:tv_shows_bloc_app/models/popular_tv_shows_model.dart';
import 'package:tv_shows_bloc_app/ui/utils/models.utils.dart';

class PopularTvShowsCubit extends Cubit<PopularTvShowsState> {
  final int page;
  PopularTvShowsCubit({required this.page})
      : super(const PopularTvShowsState()) {
    getPopularTvShows(page);
  }

  getPopularTvShows(int page) async {
    emit(state.copyWith(status: StatusModel.LOADING));

    try {
      PopularTvShowsModel popularTvShowsModel =
          await PopularTvShowsRepository().popularTvShows(page);

      emit(state.copyWith(
        status: StatusModel.SUCCESS,
        popularTvShowsModel: popularTvShowsModel,
      ));
    } catch (e) {
      emit(
        state.copyWith(
            status: StatusModel.ERROR,
            errorMessage: "Este es un error en la carga de popular tv Shows"),
      );
    }
  }
}

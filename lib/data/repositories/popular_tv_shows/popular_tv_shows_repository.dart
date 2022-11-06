import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tv_shows_bloc_app/data/repositories/popular_tv_shows/popular_tv_shows_api_repository.dart';
import 'package:tv_shows_bloc_app/models/popular_tv_shows_model.dart';

class PopularTvShowsRepository {
  Future<PopularTvShowsModel> popularTvShows(int page) async {
    try {
      http.Response bodyResp =
          await PopularTvShowsApiRepository().getReqResPopularShows(page);
      final body = bodyResp.body;
      final PopularTvShowsModel popularTvShowsModel =
          PopularTvShowsModel.fromJson(jsonDecode(body));
      print(popularTvShowsModel.tv_shows!.first.id);

      return popularTvShowsModel;
    } catch (e) {
      return PopularTvShowsModel();
    }
  }
}

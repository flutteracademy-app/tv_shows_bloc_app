import 'package:flutter/material.dart';
import 'package:tv_shows_bloc_app/data/repositories/popular_tv_shows/popular_tv_shows_api_repository.dart';
import 'package:tv_shows_bloc_app/data/repositories/popular_tv_shows/popular_tv_shows_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        PopularTvShowsRepository().popularTvShows(1);
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_cubit.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_state.dart';

class PopularTvShowsScreen extends StatelessWidget {
  const PopularTvShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularTvShowsCubit>(
      create: (context) => PopularTvShowsCubit(),
      child: BlocBuilder<PopularTvShowsCubit, PopularTvShowsState>(
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Text(
                  state.popularTvShowsModel?.tv_shows!.first.id.toString() ??
                      'no tiene valor'),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_cubit.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_state.dart';
import 'package:tv_shows_bloc_app/ui/utils/models.utils.dart';
import 'package:tv_shows_bloc_app/ui/widgets/popular_tv_shows_widget.dart';

class PopularTvShowsScreen extends StatelessWidget {
  const PopularTvShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularTvShowsCubit>(
      create: (context) => PopularTvShowsCubit(page: 1),
      child: BlocBuilder<PopularTvShowsCubit, PopularTvShowsState>(
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (state.popularTvShowsModel!.page! <=
                    state.popularTvShowsModel!.pages!) {
                  context
                      .read<PopularTvShowsCubit>()
                      .getPopularTvShows(state.popularTvShowsModel!.page! + 1);
                }
              },
            ),
            body: (state.status == StatusModel.LOADING)
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : (state.status == StatusModel.SUCCESS)
                    ? SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            PopularTvShowsWidget(
                              listTvShowModel:
                                  state.popularTvShowsModel!.tv_shows!,
                            ),
                          ],
                        ),
                      )
                    : Container(),
          );
        },
      ),
    );
  }
}

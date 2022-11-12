import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_cubit.dart';
import 'package:tv_shows_bloc_app/cubits/popular_tv_shows/popular_tv_shows_state.dart';
import 'package:tv_shows_bloc_app/ui/screens/utils/models.utils.dart';
import 'package:tv_shows_bloc_app/ui/screens/widgets/popular_tv_shows_widget.dart';

class PopularTvShowsScreen extends StatelessWidget {
  const PopularTvShowsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PopularTvShowsCubit>(
      create: (context) => PopularTvShowsCubit(page: 1),
      child: BlocBuilder<PopularTvShowsCubit, PopularTvShowsState>(
        builder: (context, state) {
          return Scaffold(
            body: (state.status == StatusModel.SUCCESS)
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        PopularTvShowsWidget(
                          listTvShowModel: state.popularTvShowsModel!.tv_shows!,
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

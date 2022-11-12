import 'package:flutter/material.dart';
import 'package:tv_shows_bloc_app/models/tv_show_model.dart';

class PopularTvShowDetailsPageObject {
  final TvShowModel tvShowModel;

  PopularTvShowDetailsPageObject({required this.tvShowModel});
}

class PopularTvShowDetails extends StatelessWidget {
  final PopularTvShowDetailsPageObject? popularTvShowDetailsPageObject;
  const PopularTvShowDetails({
    Key? key,
    this.popularTvShowDetailsPageObject,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(popularTvShowDetailsPageObject!
              .tvShowModel.image_thumbnail_path!),
          Text(popularTvShowDetailsPageObject!.tvShowModel.name!),
        ],
      ),
    );
  }
}

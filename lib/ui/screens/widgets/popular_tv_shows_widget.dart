import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tv_shows_bloc_app/models/tv_show_model.dart';
import 'package:tv_shows_bloc_app/ui/screens/popular_tv_show_details.dart';
import 'package:tv_shows_bloc_app/ui/screens/routes/app_routes.dart';

class PopularTvShowsWidget extends StatelessWidget {
  final List<TvShowModel> listTvShowModel;
  const PopularTvShowsWidget({
    Key? key,
    required this.listTvShowModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Shows más populartes"),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: listTvShowModel.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    context.push(AppRoutes.DETAILS,
                        extra: PopularTvShowDetailsPageObject(
                          tvShowModel: listTvShowModel[index],
                        ));
                  },
                  child: Card(
                    child: Container(
                      width: 80,
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Image.network(
                            listTvShowModel[index].image_thumbnail_path!,
                            fit: BoxFit.cover,
                            height: 100,
                            width: 50,
                          ),
                          Text(
                            listTvShowModel[index].name!,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

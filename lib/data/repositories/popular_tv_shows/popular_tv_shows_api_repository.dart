import 'package:http/http.dart' as http;

class PopularTvShowsApiRepository {
  Future<http.Response> getReqResPopularShows(int page) async {
    Map<String, dynamic> queryParameters = {"page": "$page"};
    Uri url =
        Uri.https("www.episodate.com", "/api/most-popular", queryParameters);

    http.Response response = await http.get(
      url,
      headers: {},
    );

    return response;
  }
}

import 'package:flutter/material.dart';
import 'package:tv_shows_bloc_app/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      // home: PopularTvShowsScreen(),
      routerConfig: router,
    );
  }
}

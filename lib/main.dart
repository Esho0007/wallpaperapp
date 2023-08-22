import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaperapp/pages/app_home_page.dart';
import 'package:wallpaperapp/pages/fav_page.dart';
import 'package:wallpaperapp/pages/image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const AppHomePage(),
        "imagePage": (context) => const ImagePage(),
        "favPage": (context) => const FavPage(),
        "appDrawer": (context) => Drawer(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:wallpaperapp/widgets/image_widget.dart';

import '../widgets/home_app_bar_widget.dart';
import '../widgets/home_search_bar_widget.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  double boxHeight = 100;
  double boxWidht = 100;

  void _expandBox() {
    setState(
      () {
        boxHeight = 300;
        boxWidht = 300;
      },
    );
  }

  void _moveBox() {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: const SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // custom app bar
              HomeAppBarWidget(),
              //search bar widget
              HomeSearchBarWidget(),
              // Tab bar
              TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                padding: EdgeInsets.symmetric(horizontal: 6),
                indicator: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3),
                  ),
                ),
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(text: 'Trending'),
                  Tab(text: 'Features'),
                  Tab(text: 'Nature'),
                  Tab(text: 'Sky'),
                  Tab(text: 'See'),
                ],
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  children: [
                    ImageWidget(),
                    ImageWidget(),
                    ImageWidget(),
                    ImageWidget(),
                    ImageWidget(),
                    ImageWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _expandBox,
          child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: boxHeight,
              width: boxWidht,
              alignment: Alignment(0, 0),
              child: Container(
                height: 100,
                width: 100,
              )),
        ),
      ),
    );
  }
}
